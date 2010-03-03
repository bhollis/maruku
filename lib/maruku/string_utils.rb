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

# Boring stuff with strings.
module MaRuKu
  module Strings
    TAB_SIZE = 4

    # Split a string into multiple lines,
    # on line feeds and/or carriage returns.
    def split_lines(s)
      s.split(/\r\n|\r|\n/)
    end

    # Parses email headers, returning a hash.
    #
    # +hash[:data]+ is the message.
    #
    # Keys are downcased and converted to symbols;
    # spaces become underscores.
    #
    #     My key: true
    #
    # becomes:
    #
    #     {:my_key => true}
    #
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

    # Returns the number of leading spaces, considering that
    # a tab counts as +TAB_SIZE+ spaces.
    def number_of_leading_spaces(s)
      spaces = s.scan(/^\s*/).first
      spaces.count(" ") + spaces.count("\t") * TAB_SIZE
    end

    # This returns the position of the first non-list character
    # in a list item.
    #
    # For example:
    #     '*Hello' # => 1
    #     '* Hello' # => 2
    #     ' * Hello' # => 3
    #     ' *   Hello' # => 5
    #     '1.Hello' # => 2
    #     ' 1.  Hello' # => 5
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
    def sanitize_ref_id(x)
      x.strip.downcase.gsub(' ', '_').gsub(/[^\w]/, '')
    end

    # Remove line-initial +>+ characters for a quotation.
    def unquote(s)
      s.gsub(/^>\s?/, '')
    end

    # Removes indentation from the beginning ofx +s+,
    # up to at most +n+ spaces.
    # Tabs are counted as +TAB_SIZE+ spaces.
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
    # Values of +"yes"+, +"true"+, +"no"+, and +"false"+
    # are converted to appropriate booleans.
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
