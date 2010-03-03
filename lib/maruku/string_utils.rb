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

module MaRuKu
  # Utility functions for dealing with strings.
  module Strings
    TAB_SIZE = 4

    # Split a string into multiple lines,
    # on line feeds and/or carriage returns.
    #
    # @param s [String]
    # @return [String]
    def split_lines(s)
      s.split(/\r\n|\r|\n/)
    end

    # Parses email headers, returning a hash.
    # `hash[:data]` is the message;
    # that is, anything past the headers.
    #
    # Keys are downcased and converted to symbols;
    # spaces become underscores. For example:
    #
    #     !!!plain
    #     My key: true
    #
    # becomes:
    #
    #     {:my_key => true}
    #
    # @param s [String] The email
    # @return [Symbol => String] The header values
    def parse_email_headers(s)
      headers = {}
      scanner = StringScanner.new(s)

      while scanner.scan(/(\w[\w\s\-]+): +(.*)\n/)
        k, v = normalize_key_and_value(scanner[1], scanner[2])
        headers[k.to_sym] = v
      end

      headers[:data] = scanner.rest
      headers
    end

    # Returns the number of leading spaces,
    # considering that a tab counts as {TAB_SIZE} spaces.
    #
    # @param s [String]
    # @return [Fixnum]
    def number_of_leading_spaces(s)
      spaces = s.scan(/^\s*/).first
      spaces.count(" ") + spaces.count("\t") * TAB_SIZE
    end

    # This returns the position of the first non-list character
    # in a list item.
    #
    # @example
    # spaces_before_first_char('*Hello') #=> 1
    # spaces_before_first_char('* Hello') #=> 2
    # spaces_before_first_char(' * Hello') #=> 3
    # spaces_before_first_char(' *   Hello') #=> 5
    # spaces_before_first_char('1.Hello') #=> 2
    # spaces_before_first_char(' 1.  Hello') #=> 5
    #
    # @param s [String]
    # @return [Fixnum]
    def spaces_before_first_char(s)
      match =
        case s.md_type
        when :ulist; s.match(/\s*.\s*/)
        when :olist; s.match(/s*\d+.\s*/)
        else
          tell_user "MARUKU BUG: '#{s.inspect}' is not a list"
          nil
        end
      match ? match.end(0) : 0
    end

    # Replace spaces with underscores and remove non-word characters.
    #
    # @param s [String]
    # @return [String]
    def sanitize_ref_id(s)
      s.strip.downcase.gsub(' ', '_').gsub(/[^\w]/, '')
    end

    # Remove line-initial `>` characters for a quotation.
    #
    # @param s [String]
    # @return [String]
    def unquote(s)
      s.gsub(/^>\s?/, '')
    end

    # Removes indentation from the beginning of `s`,
    # up to at most `n` spaces.
    # Tabs are counted as {TAB_SIZE} spaces.
    #
    # @param s [String]
    # @param n [Fixnum]
    # @return [String]
    def strip_indent(s, n)
      while n > 0
        case s[0]
        when ?\s; n -= 1
        when ?\t; n -= TAB_SIZE
        else; return s
        end
        s = s[1..-1]
      end
      return s
    end

    private

    # Normalize the key/value pairs for email headers.
    # Keys are downcased and converted to symbols;
    # spaces become underscores.
    #
    # Values of `"yes"`, `"true"`, `"no"`, and `"false"`
    # are converted to appropriate booleans.
    #
    # @param k [String]
    # @param v [String]
    # @return [Array(String, String or Boolean)]
    def normalize_key_and_value(k, v)
      k = k.strip.downcase.gsub(/\s+/, '_')
      v = v.strip

      # check synonyms
      return k, true if %w[yes true].include?(v.downcase)
      return k, false if %w[no false].include?(v.downcase)
      return k, v
    end
  end
end
