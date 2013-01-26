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

require 'strscan'

module MaRuKu::In::Markdown::SpanLevelParser
  class CharSource
    def initialize(s, parent=nil)
      @scanner = StringScanner.new(s)
      @size = s.size
    end

    # Return current char as a FixNum (or nil).
    def cur_char
      @scanner.peek(1)[0]
    end

    # Return the next n chars as a String.
    def cur_chars(n)
      @scanner.peek(n)
    end

    # Return the char after current char as a FixNum (or nil).
    def next_char
      @scanner.peek(2)[1]
    end

    # Return a character as a FixNum, advancing the pointer.
    def shift_char
      @scanner.getch[0]
    end

    # Advance the pointer
    def ignore_char
      @scanner.getch
    end

    # Advance the pointer by n
    def ignore_chars(n)
      n.times { @scanner.getch }
    end

    # Return the rest of the string
    def current_remaining_buffer
      @scanner.rest
    end

    # Returns true if string matches what we're pointing to
    def cur_chars_are(string)
      @scanner.peek(string.size) == string
    end

    # Returns true if Regexp r matches what we're pointing to
    def next_matches(r)
      @scanner.check(r)
    end

    def read_regexp(r)
      r.match(@scanner.scan(r))
    end

    def consume_whitespace
      @scanner.skip(/\s+/)
    end

    def describe
      len = 75
      num_before = [len/2, @scanner.pos].min
      num_after = [len/2, @scanner.rest_size].min
      num_before_max = @scanner.pos
      num_after_max = @scanner.rest_size

      num_before = [num_before_max, len-num_after].min
      num_after  = [num_after_max, len-num_before].min

      index_start = [@scanner.pos - num_before, 0].max
      index_end   = [@scanner.pos + num_after, @size].min

      size = index_end- index_start

      str = @scanner.string[index_start, size]
      str.gsub!("\n", 'N')
      str.gsub!("\t", 'T')

      if index_end == @size
        str += "EOF"
      end

      pre_s = @scanner.pos - index_start
      pre_s = [pre_s, 0].max
      pre_s2 = [len-pre_s, 0].max
      pre = " " * pre_s

      "-" * len + "\n" +
        str + "\n" +
        "-" * pre_s + "|" + "-" * (pre_s2) + "\n" +
        #		pre + "|\n"+
        pre + "+--- Byte #{@scanner.pos}\n"+

        "Shown bytes [#{index_start} to #{size}] of #{@size}:\n"+
        @scanner.string.gsub(/^/, ">")

      #		"CharSource: At character #{@buffer_index} of block "+
      #		" beginning with:\n    #{@buffer[0,50].inspect} ...\n"+
      #		" before: \n     ... #{cur_chars(50).inspect} ... "
    end
  end
end
