require 'strscan'

module MaRuKu::In::Markdown::SpanLevelParser
  class CharSource
    def initialize(s, parent=nil)
      raise "Passed #{s.class}" if not s.kind_of? String
      @buffer = s
      @buffer_index = 0
      @parent = parent
    end

    # Return current char as a String (or nil).
    def cur_char
      cur_chars(1)
    end

    # Return the next n chars as a String.
    def cur_chars(n)
      return nil if @buffer_index >= @buffer.size
      @buffer[@buffer_index, n]
    end

    # Return the char after current char as a String (or nil).
    def next_char
      return nil if @buffer_index + 1 >= @buffer.size
      @buffer[@buffer_index + 1, 1]
    end

    def shift_char
      c = cur_char
      @buffer_index += 1
      c
    end

    def ignore_char
      @buffer_index += 1
    end

    def ignore_chars(n)
      @buffer_index += n
    end

    def current_remaining_buffer
      @buffer[@buffer_index, @buffer.size - @buffer_index]
    end

    def cur_chars_are(string)
      cur_chars(string.size) == string
    end

    def next_matches(r)
      r2 = /^.{#{@buffer_index}}#{r}/m
      r2.match @buffer
    end

    def read_regexp(r)
      r2 = /^#{r}/
      rest = current_remaining_buffer
      m = r2.match(rest)
      if m
        @buffer_index += m.to_s.size
      end
      m
    end

    def consume_whitespace
      while c = cur_char
        break unless (c == ' ' || c == "\t")
        ignore_char
      end
    end

    def describe
      s = describe_pos(@buffer, @buffer_index)
      if @parent
        s += "\n\n" + @parent.describe
      end
      s
    end

    def describe_pos(buffer, buffer_index)
      len = 75
      num_before = [len/2, buffer_index].min
      num_after = [len/2, buffer.size - buffer_index].min
      num_before_max = buffer_index
      num_after_max = buffer.size - buffer_index

      num_before = [num_before_max, len - num_after].min
      num_after  = [num_after_max, len - num_before].min

      index_start = [buffer_index - num_before, 0].max
      index_end   = [buffer_index + num_after, buffer.size].min

      size = index_end - index_start

      str = buffer[index_start, size]
      str.gsub!("\n", 'N')
      str.gsub!("\t", 'T')

      if index_end == buffer.size
        str += "EOF"
      end

      pre_s = buffer_index - index_start
      pre_s = [pre_s, 0].max
      pre_s2 = [len - pre_s, 0].max
      pre = " " * pre_s

      "-" * len + "\n" +
        str + "\n" +
        "-" * pre_s + "|" + "-" * pre_s2 + "\n" +
        pre + "+--- Byte #{buffer_index}\n"+

        "Shown bytes [#{index_start} to #{size}] of #{buffer.size}:\n"+
        buffer.gsub(/^/, ">")
    end
  end
end
