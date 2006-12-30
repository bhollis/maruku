require 'set'

class Maruku
	include Helpers
	
	
	EscapedCharInText = 
		Set.new [?\\,?`,?*,?_,?{,?},?[,?],?(,?),?#,?.,?!,?|,?:,?+,?-,?>]
	
	EscapedCharInInlineCode = [?\\,?`]

	def parse_span_better(string)
		if not string.kind_of? String then 
			raise "Passed #{string.class}." end

		st = (string + "")
		st.freeze
		src = CharSource.new(st)
		read_span(src, EscapedCharInText, [nil])
	end
	
	def read_span(src, escaped, exit_on)
		con = SpanContext.new
		c = d = nil
		while true
			c = src.cur_char
			break if exit_on && exit_on.include?(c)

			if src.cur_chars(3) == "  \n"
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
						if src.cur_chars(4) == '<!--'
							read_html_comment(src, con)
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
				# we read the string and see what happens
				src.ignore_char # opening bracket
				children = read_span(src, EscapedCharInText, [?]])
				src.ignore_char # closing bracket
				
#				puts "Children : #{children.inspect}"
				
				# ignore space
				if src.cur_char == SPACE and 
					(src.next_char == ?[ or src.next_char == ?( )
					src.shift_char
				end
				
				case src.cur_char
					when ?(
					when ?[ # link ref
						ref_id = read_ref_id(src)
						con.push_element md_link(ref_id, children)
					else # no stuff
						con.push_elements children
				end
			else # normal text
				con.push_char src.shift_char
			end # end case
		end # end while true
		con.push_string_if_present 
		con.elements
	end
	
	SPACE = ?\
	
	R_REF_ID = Regexp.compile(/^([^\]]*)\]/)
	def read_ref_id(src)
		src.ignore_char
		if m = src.read_regexp(	R_REF_ID) 
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
				raise "Malformed HTML: #{rest.inspect}"
			end
			
			consumed = start.size - h.rest.size 
			if consumed > 0
				con.push_element md_html(h.stuff_you_read)
				src.ignore_chars(consumed)
			else
				puts "HTML helper did not work on #{rest.inspect}"
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
	
	def error(s)
		raise s
	end
	
	
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
	
	def read_regexp(r)
		buf = current_remaining_buffer
		m = r.match buf
		if m
			ignore_chars m.to_s.size
		else
#			puts "Could not read regexp #{r.inspect} from #{buf.inspect}"
		end
		m
	end
	
end




