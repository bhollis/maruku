require 'set'

class Maruku
	include Helpers
	
	EscapedCharInText = 
		Set.new [?\\,?`,?*,?_,?{,?},?[,?],?(,?),?#,?.,?!,?|,?:,?+,?-,?>]

	EscapedCharInQuotes = 
		Set.new [?\\,?`,?*,?_,?{,?},?[,?],?(,?),?#,?.,?!,?|,?:,?+,?-,?>,?',?"]
	
	EscapedCharInInlineCode = [?\\,?`]

	def parse_lines_as_span(lines)
		parse_span_better lines.join("\n")
	end

	def parse_span_better(string)
		if not string.kind_of? String then 
			error "Passed #{string.class}." end

		st = (string + "")
		st.freeze
		src = CharSource.new(st)
		read_span(src, EscapedCharInText, [nil])
	end
		
	# This is the main loop for reading span elements
	#
	# It's long, but not *complex* or difficult to understand.
	#
	#
	def read_span(src, escaped, exit_on_chars, exit_on_strings=nil)
		con = SpanContext.new
		c = d = nil
		while true
			c = src.cur_char
			break if exit_on_chars && exit_on_chars.include?(c)
			if exit_on_strings
				break if exit_on_strings.any? {|x| src.cur_chars_are x}
			end
			
			if src.cur_chars_are "  \n"
				src.ignore_chars(3)
				con.push_element  create_md_element(:linebreak)
				next
			end
			
			case c
			when ?\n, ?\t, ?\ # it's space (32)
				src.ignore_char
				con.push_space 
			when ?`
				read_inline_code(src,con)
			when ?<
				# It could be:
				# 1) HTML "<div ..."
				# 2) HTML "<!-- ..."
				# 3) url "<http:// ", "<ftp:// ..."
				# 4) email "<andrea@... ", "<mailto:andrea@..."
				# 5) on itself! "a < b	"
				
				case d = src.next_char
					when ?!; 
						if src.cur_chars_are '<!--'
							read_inline_html(src, con)
						else 
							con.push_char src.shift_char
						end
					when ??; read_server_directive
					when ?\ , ?\t 
						con.push_char src.shift_char
					else;  
						if src.next_matches(/<mailto:/) or
						   src.next_matches(/<[\w\.]+\@/)
							read_email_el(src, con)
						elsif src.next_matches(/<\w+:/)
							read_url_el(src, con)
						elsif src.next_matches(/<\w/)
#							puts "This is HTML: #{src.cur_chars(20)}"
							read_inline_html(src, con)
						else 
#							puts "This is NOT HTML: #{src.cur_chars(20)}"
							con.push_char src.shift_char
						end
				end
			when ?\\
				d = src.next_char
				if escaped.include? d
					src.ignore_chars(2)
					con.push_char d
				else
					con.push_char src.shift_char
				end
			when ?[
				if markdown_extra? && src.next_char == ?^
					read_footnote_ref(src,con)
				else
					read_link(src, con)
				end
			when ?!
				if src.next_char == ?[
					read_image(src, con)
				else
					con.push_char src.shift_char
				end
			when ?*
				if not src.next_char
					error "Opening * as last char", src, con
			#		con.push_char src.shift_char
				else
					follows = src.cur_chars(4)
					if follows =~ /^\*\*\*[^\s\*]/
						con.push_element read_emstrong(src,'***')
					elsif follows  =~ /^\*\*[^\s\*]/
						con.push_element read_strong(src,'**')
					elsif follows =~ /^\*[^\s\*]/
						con.push_element read_em(src,'*')
					else # * is just a normal char
						con.push_char src.shift_char
					end
				end
			when ?&
				if m = src.read_regexp(/&([\w\d]+);/)
					con.push_element md_entity(m[1])
				else
					con.push_char src.shift_char
				end
			when ?_
				if not src.next_char
					error "Opening _ as last char", src, con
				else
					follows = src.cur_chars(4)
					if  follows =~ /^\_\_\_[^\s\_]/
						con.push_element read_emstrong(src,'___')
					elsif follows  =~ /^\_\_[^\s\_]/
						con.push_element read_strong(src,'__')
					elsif follows =~ /^\_[^\s\_]/
						con.push_element read_em(src,'_')
					else # _ is just a normal char
						con.push_char src.shift_char
					end
				end
			when nil
				error ("Unclosed span (waiting for %s"+
				 "#{exit_on_strings.inspect})") % [
						exit_on_chars ? "#{exit_on_chars.inspect} or" : ""], src,con
			else # normal text
				con.push_char src.shift_char
			end # end case
		end # end while true
		con.push_string_if_present 
		con.elements
	end

	def read_url_el(src,con)
		src.ignore_char # leading <
		url = read_simple(src, [], [?>])
		src.ignore_char # closing >
		
		con.push_element md_url(url)
	end

	def read_email_el(src,con)
		src.ignore_char # leading <
		mail = read_simple(src, [], [?>])
		src.ignore_char # closing >
		
		address = mail.gsub(/^mailto:/,'')
		con.push_element md_email(address)
	end
	
	def read_url(src, break_on)
		if [?',?"].include? src.cur_char 
			error 'Invalid char for url', src
		end
		
		url = read_simple(src, [], break_on)
		
		if url[0] == ?< && url[-1] == ?>
			url = url[1, url.size-2]
		end
		
		if url.size == 0 
			return nil
		end
		
		url
	end
	
	# Tries to read a quoted value. If stream does not
	# start with ' or ", returns nil.
	def read_quoted(src,con)
		case src.cur_char
			when ?', ?"
				quote_char = src.shift_char # opening quote
				string = read_simple(src, EscapedCharInQuotes, [quote_char])
				src.ignore_char # closing quote
				return string
			else 
#				puts "Asked to read quote from: #{src.cur_chars(10).inspect}"
				return nil
		end
	end
	
	# Reads a simple string (no formatting) until one of break_on_chars, 
	# while escaping the escaped
	def read_simple(src, escaped, exit_on_chars) 
		text = ""
		while true
#			puts "Reading simple #{text.inspect}"
			c = src.cur_char
			if exit_on_chars && exit_on_chars.include?(c)
#				puts ("  breaking on "<<c)+" contained in "+exit_on_chars.inspect
				break
			end
			case c
			when nil
				s= "String finished while reading (break on #{exit_on_chars.inspect})"+
				" already read: #{text.inspect}"
				error s, src
			when ?\\
				d = src.next_char
				if escaped.include? d
					src.ignore_chars(2)
					text << d
				else
					text << src.shift_char
				end
			else 
				text << src.shift_char
			end
		end
#		puts "Read simple #{text.inspect}"
		text
	end
	
	def read_em(src, delim)
		src.ignore_char
		children = read_span(src, EscapedCharInText, nil, [delim])
		src.ignore_char
		md_em(children)
	end
	
	def read_strong(src, delim)
		src.ignore_chars(2)
		children = read_span(src, EscapedCharInText, nil, [delim])
		src.ignore_chars(2)
		md_strong(children)
	end

	def read_emstrong(src, delim)
		src.ignore_chars(3)
		children = read_span(src, EscapedCharInText, nil, [delim])
		src.ignore_chars(3)
		md_emstrong(children)
	end
	
	SPACE = ?\ # = 32
	
#	R_REF_ID = Regexp.compile(/([^\]\s]*)(\s*\])/)
	R_REF_ID = Regexp.compile(/([^\]\s]*)(\s*\])/)
	
	# Reads a bracketed id "[refid]". Consumes also both brackets.
	def read_ref_id(src, con)
		src.ignore_char # [
		src.consume_whitespace
#		puts "Next: #{src.cur_chars(10).inspect}"
		if m = src.read_regexp(R_REF_ID) 
#			puts "Got: #{m[1].inspect} Ignored: #{m[2].inspect}"
#			puts "Then: #{src.cur_chars(10).inspect}"
			m[1]
		else
			error "Could not read ref_id", src, con
		end
	end
	
	def read_footnote_ref(src,con)
		ref = read_ref_id(src,con)
		con.push_element md_foot_ref(ref)
	end
	
	def read_html_comment(con)	
		puts "html_comment"
		src.ignore_char # unimplemented
	end
	
	def read_inline_html(src, con)
		h = HTMLHelper.new
		begin
			# This is our current buffer in the context
			start = src.current_remaining_buffer
			
			h.eat_this start
			if not h.is_finished?
				error "inline_html: Malformed:\n "+
					"#{start.inspect}\n #{h.inspect}",src,con
			end
			
			consumed = start.size - h.rest.size 
			if consumed > 0
				con.push_element md_html(h.stuff_you_read)
				src.ignore_chars(consumed)
			else
				puts "HTML helper did not work on #{start.inspect}"
				con.push_char src.shift_char
			end
		rescue Exception => e
#			puts e.inspect
			if false # we want to be good
				con.push_char src.shift_char
			else
				error "Bad html: \n" + e.inspect,src,con
			end
		end
	end
	
	def read_inline_code(src, con)
		num_ticks = 0
		
		while src.cur_char == ?` 
			num_ticks += 1
			src.ignore_char
		end

		
		# ignore space
		if num_ticks > 1 && src.cur_char == SPACE
			src.ignore_char
		end

#		puts "Ticks: #{num_ticks } next: #{src.some} "

		end_string = "`"*num_ticks
		
		code = ''
		while true
			if not src.cur_char
				error("Ticks not finished: read #{code.inspect}"+
				      " and waiting for #{end_string.inspect} num=#{num_ticks}",
						src,con)
			end
			
			if src.cur_chars(num_ticks) ==end_string # bah
#				puts "Breaking on #{src.some}  (end:#{end_string.inspect})"
				src.ignore_chars num_ticks
				break
			end
			
			code << src.shift_char
		end

		# drop last space 
		if num_ticks > 1 && code[-1] == SPACE
			code = code[0,code.size-1]
		end

#		puts "Read `` code: #{code.inspect}; after: #{src.cur_chars(10).inspect} "
		con.push_element md_code(code)
	end

	
	
	def read_server_directive
		# match = gimme(/^(.*)\?>/)
		# if not match
		# 	error "Server directive not closed"
		# end
		# server = match[1]
		# con.found_object create_md_element(:server, server)
	end
	
	def read_link(src, con)
		# we read the string and see what happens
		src.ignore_char # opening bracket
		children = read_span(src, EscapedCharInText, [?]])
		src.ignore_char # closing bracket

		# ignore space
		if src.cur_char == SPACE and 
			(src.next_char == ?[ or src.next_char == ?( )
			src.shift_char
		end
		case src.cur_char
		when ?(
			src.ignore_char # opening (
			src.consume_whitespace
			url = read_url(src, [SPACE,?\t,?)])
			if not url
				url = ''
				#error "Could not read url from #{src.cur_chars(10).inspect}"
			end
			src.consume_whitespace
			title = nil
			if src.cur_char != ?) # we have a title
				title = read_quoted(src,con)
				error 'Must quote title',src,con if not title
			end
			src.consume_whitespace
			closing = src.shift_char # closing )
			if closing != ?)
				error 'Unclosed link',src,con
			end
			con.push_element md_im_link(children,url, title)
		when ?[ # link ref
			ref_id = read_ref_id(src,con)
			con.push_element md_link(children, ref_id)
		else # no stuff
			con.push_elements children
		end
	end # read link

	def read_image(src, con)
		src.ignore_chars(2) # opening "!["
		alt_text = read_span(src, EscapedCharInText, [?]])
		src.ignore_char # closing bracket
		# ignore space
		if src.cur_char == SPACE and 
			(src.next_char == ?[ or src.next_char == ?( )
			src.ignore_char
		end
		case src.cur_char
		when ?(
			src.ignore_char # opening (
			src.consume_whitespace
			url = read_url(src, [SPACE,?\t,?)])
			if not url
				error "Could not read url from #{src.cur_chars(10).inspect}",
					src,con
			end
			src.consume_whitespace
			title = nil
			if src.cur_char != ?) # we have a title
				title = read_quoted(src,con)
				error 'Must quote title',src,con if not title
			end
			src.consume_whitespace
			closing = src.shift_char # closing )
			if closing != ?)
				error ("Unclosed link: '"<<closing<<"'")+
					" Read url=#{url.inspect} title=#{title.inspect}",src,con
			end
			con.push_element md_im_image(alt_text, url, title)
		when ?[ # link ref
			ref_id = read_ref_id(src,con)
			con.push_element md_image(alt_text, ref_id)
		else # no stuff
			con.push_elements children
		end
	end # read link

end


class SpanContext 
	# Read elements
	attr_accessor :elements
	def initialize
		@elements = []
		@cur_string = ""
	end
	
	def push_element(e)
		push_string_if_present
		@elements << e
		nil
	end

	def push_elements(a)
		for e in a 
			if e.kind_of? String
				e.each_byte do |b| push_char b end
			else
				push_element e
			end
		end
	end
	def push_string_if_present
		if @cur_string.size > 0
			@elements << @cur_string
			@cur_string = ""
		end
		nil
	end
	
	def push_char(c)
		@cur_string << c 
		nil
	end
	
	# push space into current string if
	# there isn't one
	def push_space
		last = @cur_string[@cur_string.size-1]
		@cur_string << ?\  if last != ?\ 
	end
	
	def describe
		"Context: After reading %s, %s" %
		[ @elements.inspect, @cur_string.inspect ]
	end
	
end

class CharSource
	
	def initialize(s)
		@elements = []
		@cur_string = ""
		@buffer = s
		@buffer_index = 0
	end
	
	# Return current char as a FixNum (or nil).
	def cur_char; @buffer[@buffer_index]   end

	# Return the next n chars as a String.
	def cur_chars(n); @buffer[@buffer_index,n]  end
	
	# Return the char after current char as a FixNum (or nil).
	def next_char; @buffer[@buffer_index+1] end
	
	def shift_char
		c = @buffer[@buffer_index]
		@buffer_index+=1
		c
	end
	
	def ignore_char
		@buffer_index+=1
	end
	
	def ignore_chars(n)
		@buffer_index+=n
		nil
	end
	
	def current_remaining_buffer
		@buffer[@buffer_index, @buffer.size-@buffer_index]
	end
	
	def cur_chars_are(string)
		r2 = /^.{#{@buffer_index}}#{Regexp.escape string}/m
		@buffer =~ r2
	end

	def next_matches(r)
		r2 = /^.{#{@buffer_index}}#{r}/m
		r2.match @buffer
	end
	
	def read_regexp(r)
		r2 = /^.{#{@buffer_index}}#{r}/m
		m = r2.match @buffer
		if m
			consumed = m.to_s.size - @buffer_index
#			puts "Consumed #{consumed} chars (entire is #{m.to_s.inspect})"
			ignore_chars consumed
		else
#			puts "Could not read regexp #{r2.inspect} from buffer "+
#			" index=#{@buffer_index}"
#			puts "Cur chars = #{cur_chars(20).inspect}"
#			puts "Matches? = #{cur_chars(20) =~ r}"
		end
		m
	end
	
	def consume_whitespace
		while c = cur_char 
			if (c == 32 || c == ?\t)
#				puts "ignoring #{c}"
				ignore_char
			else
#				puts "#{c} is not ws: "<<c
				break
			end
		end
	end
	
	def describe
		"CharSource: At character #{@buffer_index} of block "+
		" beginning with:\n    #{@buffer[0,50].inspect} ...\n"+
		" before: \n     ... #{cur_chars(50).inspect} ... "
	end
	
	def some
		cur_chars(15).inspect
	end
end




