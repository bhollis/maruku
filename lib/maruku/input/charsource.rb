#--
#   Copyright (C) 2006  Andrea Censi  <andrea (at) rubyforge.org>
#
# This file is part of Maruku.
# 
#   Maruku is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
# 
#   Maruku is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
# 
#   You should have received a copy of the GNU General Public License
#   along with Maruku; if not, write to the Free Software
#   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#++


module MaRuKu; module In; module Markdown; module SpanLevelParser

class CharSource
	include MaRuKu::Strings
	
	def initialize(s)
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
		# There is a bug here
		if false
			r2 = /^.{#{@buffer_index}}#{Regexp.escape string}/m
			@buffer =~ r2
		else
			cur_chars(string.size) == string
		end
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

	def read_text_chars(out)
		s = @buffer.size; c=nil
		while @buffer_index < s && (c=@buffer[@buffer_index]) &&
			 ((c>=?a && c<=?z) || (c>=?A && c<=?Z))
				out << c
				@buffer_index += 1
		end
	end
	
	def describe
		
		len = 75
		num_before = [len/2, @buffer_index].min
		num_after = [len/2, @buffer.size-@buffer_index].min
		num_before_max = @buffer_index
		num_after_max = @buffer.size-@buffer_index
		
#		puts "num #{num_before} #{num_after}"
		num_before = [num_before_max, len-num_after].min
		num_after  = [num_after_max, len-num_before].min
#		puts "num #{num_before} #{num_after}"
		
		index_start = [@buffer_index - num_before, 0].max
		index_end   = [@buffer_index + num_after, @buffer.size].min
		
		size = index_end- index_start
		
#		puts "- #{index_start} #{size}"

		str = @buffer[index_start, size]
		str.gsub!("\n",'N')
		str.gsub!("\t",'T')
		
		if index_end == @buffer.size 
			str += "EOF"
		end
			
		pre_s = @buffer_index-index_start
		pre_s = [pre_s, 0].max
		pre_s2 = [len-pre_s,0].max
#		puts "pre_S = #{pre_s}"
		pre =" "*(pre_s) 
		
		"-"*len+"\n"+
		str + "\n" +
		"-"*pre_s + "|" + "-"*(pre_s2)+"\n"+
#		pre + "|\n"+
		pre + "+--- Byte #{@buffer_index}\n"+
		
		"Shown bytes [#{index_start} to #{size}] of #{@buffer.size}:\n"+
		add_tabs(@buffer,1,">")
		
#		"CharSource: At character #{@buffer_index} of block "+
#		" beginning with:\n    #{@buffer[0,50].inspect} ...\n"+
#		" before: \n     ... #{cur_chars(50).inspect} ... "
	end
	
	def some
		cur_chars(15).inspect
	end
end

end end end end
