
class Maruku
	# def parse_lines_as_span(lines)
	# 	buffer = lines.join("\n")
	# 	parse_span_better(buffer)
	# end
	
	EscapedCharInText = 
		[?\\,?`,?*,?_,?{,?},?[,?],?(,?),?#,?.,?!,?|,?:,?+,?-,?>]
	
	EscapedCharInInlineCode = [?\\,?`]

	def parse_span_better(string)
		if not string.kind_of? String then 
			raise "Passed #{string.class}." end

		st = (string + "")
		st.freeze
		con = ParserContext.new(st)
		read_span(con, EscapedCharInText, [])
	end
	
	def read_span(con, escaped, exit_on)
		c = d = nil
		while c = con.cur_char
			break if exit_on && exit_on.include?(c)

			if con.cur_chars(3) == "  \n"
				con.ignore_chars(3)
				con.push_element create_md_element(:linebreak)
				next
			end
			
			case c
			when ?\n, ?\t, ?\ # it's space (32)
				con.ignore_char
				con.push_space 
			when ?`
				case d = con.next_char
					when ?`; read_double_ticks(con)
					else read_single_ticks(con)
				end
			when ?<
				case d = con.next_char
					when ?!; 
						if con.cur_chars(4) == '<!--'
							read_html_comment(con)
						else con.pass_char end
					when ??; read_server_directive
					else;  
						if con.cur_chars(2) =~ /^<\w/
							read_inline_html(con)
						else 
							con.pass_char
						end
				end
			when ?\\
				d = next_char
				if escaped.include? d
					con.shift_chars(2)
					con.push_char d
				else
					con.shift_char
					con.push_char ?\
				end
			else # normal text
				con.pass_char
			end # end case
		end # end while true
		con.push_string_if_present 
		con.elements
	end
	
	def read_html_comment(con)	
		puts "html_comment"
		con.ignore_char # unimplemented
	end
	
	def read_inline_html(con)
		puts "inline_html"
		con.ignore_char
	end
	
	def read_double_ticks(con)
		con.ignore_chars(2)
		code = ''
		while true
			error("Double ticks not finished: #{code.inspect}"
			) if not con.cur_char
			
			c = con.shift_char
			if (c == ?`) and (con.cur_char == ?`)
				con.ignore_char # last tick
				break
			end
			code << c
		end
#		puts "Read `` code: #{code.inspect}"
		con.push_element create_md_element(
			:inline_code,[],
			{:raw_code => code})
	end

	def read_single_ticks(con)
		con.ignore_char # first tick
		code = ''
		while true 
			case c = con.shift_char
			when nil;  error("Single tick not finished:"+
				             " #{code.inspect}")
			when  ?`;  break
			when  ?\\; 
				case next_char
				when ?` ; code << ?`;  con.ignore_char
				when ?\\; code << ?\\; con.ignore_char 
				else      code << ?\\
				end
			else  code << c
			end
		end
		
#		puts "Read ` code: #{code.inspect}"
		con.push_element create_md_element(
			:inline_code,[],
			{:raw_code => code})
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


class ParserContext 
	attr_accessor :elements
	
	def initialize(buffer_to_read)
		@elements = []
		@cur_string = ""
		@buffer = buffer_to_read
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
	
	def push_element(e)
		push_string_if_present
		@elements << e
		nil
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
	
	# shifts a char and returns it
	def pass_char
		@cur_string << @buffer[@buffer_index]
		@buffer_index += 1
		nil
	end
	
	# push space into current string if
	# there isn't one
	def push_space
		last = @cur_string[@cur_string.size-1]
		@cur_string << ?\  if last != ?\ 
	end
end




