require 'set'

class Maruku
	include Helpers
	
	
	EscapedCharInText = 
		Set.new [?\\,?`,?*,?_,?{,?},?[,?],?(,?),?#,?.,?!,?|,?:,?+,?-,?>]

	EscapedCharInQuotes = 
		Set.new [?\\,?`,?*,?_,?{,?},?[,?],?(,?),?#,?.,?!,?|,?:,?+,?-,?>,?',?"]
	
	EscapedCharInInlineCode = [?\\,?`]

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
				break if exit_on_strings.any? {|x| src.next_chars_are x}
			end
			
			if src.next_chars_are "  \n"
				src.ignore_chars(3)
				con.push_element  create_md_element(:linebreak)
				next
			end
			
			case c
			when ?\n, ?\t, ?\ # it's space (32)
				src.ignore_char
				con.push_space 
			when ?`
				case d = src.next_char
					when ?`; read_double_ticks(src, con)
					else read_single_ticks(src, con)
				end
			when ?<
				case d = src.next_char
					when ?!; 
						if src.next_chars_are '<!--'
							read_inline_html(src, con)
						else 
							con.push_char src.shift_char
						end
					when ??; read_server_directive
					else;  
						if src.cur_chars(2) =~ /^<\w/
							read_inline_html(src, con)
						else 
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
					read_link(src, con)
			when ?!
				if src.next_char == ?[
					read_image(src, con)
				else
					con.push_char src.shift_char
				end
			when ?*
				if not src.next_char
					error "Opening * as last char"
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
			when ?_
				if not src.next_char
					error "Opening _ as last char"
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
						exit_on_chars ? "#{exit_on_chars.inspect} or" : ""]
			else # normal text
				con.push_char src.shift_char
			end # end case
		end # end while true
		con.push_string_if_present 
		con.elements
	end

	
	def read_url(src, break_on)
		# urls must start with a w
		c = src.cur_char
		s = ""<<c
		if not s =~ /[\w\/\#]/
			return nil
		end
		read_simple(src, [], break_on)
	end
	
	# Tries to read a quoted value. If stream does not
	# start with ' or ", returns nil.
	def read_quoted(src)
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
#				puts s
				error s
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
	
	R_REF_ID = Regexp.compile(/([^\]\s]*)\s*\]/)
	
	# Reads a bracketed id "[refid]". Consumes also both brackets.
	def read_ref_id(src)
		src.ignore_char
		src.consume_whitespace
		if m = src.read_regexp(R_REF_ID) 
			m[1]
		else
			error "Could not read ref_id"
		end
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
				error "Malformed HTML: #{start.inspect}\n #{h.inspect}"
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
				raise e
			end
		end
	end
	
	def read_double_ticks(src, con)
		src.ignore_chars(2)
		code = ''
		while true
			error("Double ticks not finished: #{code.inspect}"
			) if not src.cur_char
			
			c = src.shift_char
			if (c == ?`) and (src.cur_char == ?`)
				src.ignore_char # last tick
				break
			end
			code << c
		end
#		puts "Read `` code: #{code.inspect}"
		con.push_element md_code(code)
	end

	def read_single_ticks(src, con)
		src.ignore_char # first tick
		code = ''
		while true 
			case c = src.shift_char
			when nil;  error("Single tick not finished:"+
				             " #{code.inspect}")
			when  ?`;  break
			when  ?\\ 
				case next_char
				when ?` ; code << ?`;  src.ignore_char
				when ?\\; code << ?\\; src.ignore_char 
				else      code << ?\\
				end
			else  code << c
			end
		end
		
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
				error "Could not read url from #{src.cur_chars(10).inspect}"
			end
			src.consume_whitespace
			title = nil
			if src.cur_char != ?) # we have a title
				title = read_quoted(src)
				error 'Must quote title' if not title
			end
			src.consume_whitespace
			closing = src.shift_char # closing )
			if closing != ?)
				error 'Unclosed link'
			end
			con.push_element md_im_link(children,url, title)
		when ?[ # link ref
			ref_id = read_ref_id(src)
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
				error "Could not read url from #{src.cur_chars(10).inspect}"
			end
			src.consume_whitespace
			title = nil
			if src.cur_char != ?) # we have a title
				title = read_quoted(src)
				error 'Must quote title' if not title
			end
			src.consume_whitespace
			closing = src.shift_char # closing )
			if closing != ?)
				error ("Unclosed link: '"<<closing<<"'")+
					" Read url=#{url.inspect} title=#{title.inspect}"
			end
			con.push_element md_im_image(alt_text, url, title)
		when ?[ # link ref
			ref_id = read_ref_id(src)
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
	
	def next_chars_are(string)
		r2 = /^.{#{@buffer_index}}#{Regexp.escape string}/xm
		@buffer =~ r2
	end
	
	def read_regexp(r)
		r2 = /^.{#{@buffer_index}}#{r}/
		m = r2.match @buffer
		if m
			ignore_chars m.to_s.size
		else
#			puts "Could not read regexp #{r2.inspect} from #{buf.inspect}"
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
end




