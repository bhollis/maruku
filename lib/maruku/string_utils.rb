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


class Maruku
	
	# Split a string into lines, and chomps the newline
	def split_lines(s)
		a = []
		s.each_line do |l| 
			l = l.chomp
			a << l 
		end	
		a
	end
	
	# This parses email headers. Returns an hash. hash['data'] is the message.
	def parse_email_headers(s)
		keys={}
		match = (s =~ /((\w+: .*\n)+)\n/)
		if match != 0
			keys[:data] = s
		else
			keys[:data] = $'
			headers = $1
			headers.split("\n").each do |l| 
				k, v = l.split(':')
				k, v = normalize_key_and_value(k, v)
				k = k.to_sym
#				puts "K = #{k}, V=#{v}"
				keys[k] = v
			end
		end
		keys
	end
	
	# `.xyz` => class: xyz
	# `#xyz` => id: xyz
	def normalize_key_and_value(k,v)
		v = v ? v.strip : true # no value defaults to true
		k = k.strip
		
		# `.xyz` => class: xyz
		if k =~ /^\.([\w\d]+)/
			return :class, $1
		# `#xyz` => id: xyz
		elsif k =~ /^\#([\w\d]+)/
			return :id, $1
		else
			# check synonyms
			v = true if ['yes','true'].include?(v.to_s.downcase)
			v = false if ['no','false'].include?(v.to_s.downcase)
		
			k = k.downcase.gsub(' ','_')
			return k, v
		end
	end
	
	# Returns the number of leading spaces, considering that
	# a tab counts as `TabSize` spaces.
	def number_of_leading_spaces(s)
		n=0; i=0;
		while i < s.size 
			c = s[i,1]
			if c == ' '
				i+=1; n+=1;
			elsif c == "\t"
				i+=1; n+=TabSize;
			else
				break
			end
		end
		n
	end

	# This returns the position of the first real char in a list item
	#
	# For example: 
	#     '*Hello' # => 1
	#     '* Hello' # => 2
	#     ' * Hello' # => 3
	#     ' *   Hello' # => 5
	#     '1.Hello' # => 2
	#     ' 1.  Hello' # => 5
	
	def spaces_before_first_char(s)
		case line_node_type(s)
		when :ulist
			i=0;
			# skip whitespace
			while s[i,1] =~ /\s/; i+=1 end
			# skip indicator
			i+=1
			# skip whitespace
			while s[i,1] =~ /\s/; i+=1 end
						# 
			# while i < s.size
			# 	break if not [' ',"\t",'*','-'].include? s[i,1]
			# 	i += 1
			# end
			return i
		when :olist
			i=0;
			# skip whitespace
			while s[i,1] =~ /\s/; i+=1 end
			# skip digits
			while s[i,1] =~ /\d/; i+=1 end
			# skip dot
			i+=1
			# skip whitespace
			while s[i,1] =~ /\s/; i+=1 end
			return i
		end
	end

	# Counts the number of leading '#' in the string
	def num_leading_hashes(s)
		i=0;
		while i<(s.size-1) && (s[i,1]=='#'); i+=1 end
		i	
	end
	
	# Strips initial and final hashes
	def strip_hashes(s)
		s = s[num_leading_hashes(s), s.size]
		i = s.size-1
		while i > 0 && (s[i,1] =~ /(#|\s)/); i-=1; end
		s[0, i+1].strip
	end
	

	# removes initial quote
	def unquote(s)
		s.gsub(/^>\s?/,'')
	end

	# toglie al massimo n caratteri
	def strip_indent(s, n) 
		i = 0
		while i < s.size && n>0
			c = s[i,1]
			if c == ' '
				n-=1;
			elsif c == "\t"
				n-=TabSize;
			else
				break
			end
			i+=1
		end
		s[i, s.size-1]
	end


	def debug(s)
		$stderr.puts s
	end

	def dbg_describe_ary(a, prefix='')
		i = 0 
		a.each do |l|
			$stderr.puts "#{prefix} (#{i+=1})##{l}#"
		end
	end

	def force_linebreak?(l)
		l =~ /  $/
	end

	def line_node_type(l)
		# raw html is like PHP Markdown Extra: at most three spaces before
		return :code     if number_of_leading_spaces(l)>=4
		return :footnote_text      if l =~ FootnoteText
		return :ref if l =~ LinkRegex or l=~ IncompleteLink
		return :abbreviation if l =~ Abbreviation
		return :definition if l =~ Definition
		# I had a bug with emails and urls at the beginning of the 
		# line that were mistaken for raw_html
		return :text if l=~EMailAddress or l=~ URL
		return :raw_html if l =~ %r{^[ ]?[ ]?[ ]?</?\s*\w+}
		return :ulist    if l =~ /^\s?([\*-\+])\s+.*\w+/
		return :olist    if l =~ /^\s?\d\..*\w+/
		return :empty    if l.strip.size == 0
		return :header1  if l =~ /^(=)+/ 
		return :header2  if l =~ /^([-\s])+$/ 
		return :header3  if l =~ /^(#)+\s*\S+/ 
		# at least three asterisks on a line, and only whitespace
		return :hrule    if l =~ /^(\s*\*\s*){3,1000}$/ 
		return :hrule    if l =~ /^(\s*-\s*){3,1000}$/ # or hyphens
		return :quote    if l =~ /^>/
		return :metadata if l =~ /^@/
		return :text
	end
	
	# Example:
	#     ^:blah blah
	#     ^: blah blah
	#     ^   : blah blah
	Definition = %r{ 
		^ # begin of line
		[ ]{0,3} # up to 3 spaces
		: # colon
		\s* # whitespace
		(\S.*) # the text    = $1
		$ # end of line
	}x
	
	# Example:
	#     *[HTML]: Hyper Text Markup Language
	Abbreviation = %r{
		^  # begin of line
		\* # one asterisk
		\[ # opening bracket
		([^\]]+) # any non-closing bracket:  id = $1
		\] # closing bracket
		:  # colon
		\s* # whitespace
		(\S.*\S)* #           definition=$2
		\s* # strip this whitespace
		$   # end of line
	}x

	FootnoteText = %r{
		^\s*\[(\^.+)\]: # id = $1 (including '^')
		\s*(\S.*)?$    # text = $2 (not obb.)
	}x
	
	# This regex is taken from BlueCloth sources
	# Link defs are in the form: ^[id]: \n? url "optional title"
	LinkRegex = %r{
		^[ ]*\[(.+)\]:		# id = $1
		  [ ]*
		<?(\S+)>?				# url = $2
		  [ ]*
		(?:# Titles are delimited by "quotes" or (parens).
			["(']
			(.+?)			# title = $3
			[")']			# Matching ) or "
			\s*(.+)?   # stuff = $4
		)?	# title is optional
	  }x

	IncompleteLink = %r{^\s*\[(.+)\]:\s*$}

	HeaderWithId = /^(.*)\{\#([\w_-]+)\}\s*$/

	TabSize = 4;

	# if contains a pipe, it could be a table header
	MightBeTableHeader = %r{\|}
	# -------------:
	Sep = /\s*(\:)?\s*-+\s*(\:)?\s*/
	# | -------------:| ------------------------------ |
	TableSeparator = %r{^(\|?#{Sep}\|?)+\s*$}
	
	
	EMailAddress = /<([^:]+@[^:]+)>/
	URL = /^<http:/
end

class String
	S = 230
	MarkdownEscaped = 
		[["\\",S+0], 
		 ['`',S+1],
		 ['*',S+2],
		['_',S+3],['{',S+4],['}',S+5],['[',S+6],[']',S+7],
		['(',S+8],[')',S+9],['#',S+10],['.',S+11],
		['!',S+12],
		# PHP Markdown extra
		['|',S+13],[':',S+14], ["+",S+15], ["-",S+16], [">",S+17]]

	MarkdownAdd = 200
	
	
	def escape_md_special!
		MarkdownEscaped.each do |c|
			escape_sequence = "\\#{c[0]}"
			#puts "Escaping -#{escape_sequence}-"
			escaped ="0"; escaped[0]=c[1]
			gsub!(escape_sequence, escaped)
		end

		# But if you surround an * or _ with spaces, 
		# it’ll be treated as a literal asterisk or underscore.
		gsub!(/\s\*(\s|$)/, [S+2].pack('c'))
		gsub!(/\s_(\s|$)/,  [S+2].pack('c'))
		
		self
	end

	def unescape_md_special!
		for i in 0..size-1
			for e in MarkdownEscaped
				if self[i] == e[1]
					self[i,1] = e[0]
				end
			end
		end
		self
	end

	def it_was_a_code_block
		s = ""; tmp =" "
		each_byte do |b|
			tmp[0] = b
			found = false
			for e in MarkdownEscaped
				if b == e[1]
					s << '\\'
					s << e[0]
					found = true
				end
			end
			s << tmp if not found
		end
		s
	end
	
	def unescape_md_special; dup.unescape_md_special! end
	def   escape_md_special; dup.  escape_md_special! end
	
end