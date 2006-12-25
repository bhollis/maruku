
class Maruku
	def initialize(s=nil)
		@node_type = :document
		@doc       = self

		@refs = {}
		@footnotes = {}
		@abbreviations = {}
		
		parse_doc(s) if s 
	end
		
	def parse_doc(s)
		# setup initial stack
		@stack = []
		
		@meta = parse_email_headers(s)
		lines =  split_lines(@meta[:data])
		@children = parse_lines_as_markdown(lines)
		
		self.search_abbreviations
		self.substitute_markdown_inside_raw_html
	end

	def search_abbreviations
		@abbreviations.each do |abbrev, title|
#		puts "#{abbrev} => #{title}"
			self.map_match(Regexp.new(Regexp.escape(abbrev))) {
				e = create_md_element(:abbreviation)
				e.children = [abbrev.dup]
				e.meta[:title] = title.dup if title
				e
			}
		end
	end
	
	# (PHP Markdown extra) Search for elements that have
	# markdown=1 or markdown=block defined
	def substitute_markdown_inside_raw_html
		self.each_element(:raw_html) do |e|
			doc = e.meta[:parsed_html]
			if doc # valid html
				# parse block-level markdown elements in these HTML tags
				block_tags = ['div']
				# use xpath to find elements with 'markdown' attribute
				doc.elements.to_a( "//*[attribute::markdown]" ).each do |e|
					# should we parse block-level or span-level?
					parse_blocks = (e.attributes['markdown'] == 'block') || 
					               block_tags.include?(e.name)
					# remove 'markdown' attribute
					e.delete_attribute 'markdown'
					# Select all text elements of e
					e.texts.each do |original_text|
#						puts "parse_blocks = #{parse_blocks} found = #{original_text} "
						s = original_text.to_s.strip # XXX
						el = create_md_element(:dummy,
						 	parse_blocks ? parse_text_as_markdown(s) :
						                  parse_lines_as_span(s) )
						el.children_to_html.each do |x|
							e.insert_before(original_text, x)
						end
						e.delete(original_text)
					end
					
				end
			end
		end
	end


	# Splits the string and calls parse_lines_as_markdown
	def parse_text_as_markdown(text)
		lines =  split_lines(text)
		parse_lines_as_markdown(lines)
	end
	
	def parse_lines_as_markdown(lines)
		@stack.push lines
		output = []; current_metadata = just_read_metadata = nil
		# run state machine
		while cur_line
			
#  Prints detected type
			puts "#{cur_line_node_type}|#{cur_line}"
			case cur_line_node_type
				when :empty; 
					shift_line; 
				when :text
					if cur_line =~ MightBeTableHeader and 
						(next_line && next_line =~ TableSeparator)
						output << read_table
					elsif [:header1,:header2].include? next_line_node_type
						e = create_md_element(:header)
						line = shift_line.strip
						if line =~ HeaderWithId 
							line = $1.strip
							e.meta[:id] = $2
						end
						e.children = parse_lines_as_span [ line ]

						e.meta[:level] = cur_line_node_type == :header2 ? 2 : 1
						shift_line

						output << e
					elsif eventually_comes_a_def_list
					 	definition = read_definition
						if output.last && output.last.node_type == :definition_list
							output.last.children << definition
						else
							output << create_md_element(:definition_list, [definition])
						end
					
					else # Start of a paragraph
						output << read_paragraph
					end
				when :header2, :hrule
					# hrule
					shift_line
					output << create_md_element(:hrule)
				when :header3
					e = create_md_element(:header)
					line = shift_line.strip
					if line =~ HeaderWithId 
						line = $1.strip
						e.meta[:id] = $2
					end
					
					e.meta[:level] = num_leading_hashes(line)
					e.children =  parse_lines_as_span [strip_hashes(line)] 
					output << e
				when :ulist, :olist
					list_type = cur_line_node_type == :ulist ? :ul : :ol
					li = read_list_item
					# append to current list if we have one
					if output.last && output.last.node_type == list_type
						output.last.children << li
					else
						output << create_md_element(list_type, [li])
					end
				when :quote;    output << read_quote
				when :code;     e = read_code; output << e if e
				when :raw_html; output << read_raw_html

				# these do not produce output
				when :footnote_text; read_footnote_text
				when :ref;           read_ref
				when :abbreviation;  read_abbreviation
				when :metadata;      just_read_metadata = read_metadata
					
				# warn if we forgot something
				else
					node_type = cur_line_node_type
					$stderr.puts "Ignoring line '#{shift_line}' type = #{node_type}"
			end
			
			if current_metadata and output.last
				output.last.meta.merge! current_metadata
				current_metadata = nil
#				puts "meta for #{output.last.node_type}\n #{output.last.meta.inspect}"
			end
			current_metadata = just_read_metadata
			just_read_metadata = nil
		end
		# pop the stack
		@stack.pop
		
		# See for each list if we can omit the paragraphs and use li_span
		output.each do |c| 
			# Remove paragraphs that we can get rid of
			if [:ul,:ol].include? c.node_type 
				if c.children.all? {|li| !li.meta[:want_my_paragraph]} then
					c.children.each do |d|
						d.node_type = :li_span
						d.children = d.children[0].children 
					end
				end
			end 
			if c.node_type == :definition_list
				if c.children.all?{|defi| !defi.meta[:want_my_paragraph]} then
					c.children.each do |definition| 
						dds = definition.meta[:definitions] 
						dds.each do |dd|
							dd.children = dd.children[0].children 
						end
					end
				end
			end 
		end
		
		output
	end
		 
	def create_md_element(node_type, children=[])
		e = MDElement.new
		e.node_type = node_type
		e.children = children
		e.doc = self
		e
	end
	
	def top; @stack.last end
	def cur_line_node_type; line_node_type top.first  end
	def cur_line; top.empty? ? nil : top.first end
	def next_line; top.empty? ? nil : top[1] end
	def next_line_node_type; (top.size >= 2) ? line_node_type(top[1]) : nil end
	def shift_line; top.shift; end
	
	
	def read_raw_html
		lines = []
		
		cur_line =~ %r{^<(\w+)}
		tag = $1 
#		puts "Start tag = #{tag} "
		
		while cur_line 
			break if (number_of_leading_spaces(cur_line) == 0) &&
				(not [:raw_html, :empty].include?  cur_line_node_type)

			lines << shift_line
			# check for a closing tag
			if (lines.last =~ %r{^</(\w+)}|| 
				lines.last =~ %r{</(\w+)>\s*$})  && $1 == tag
				break
			end
		end
		
#		dbg_describe_ary(lines, 'HTML')

		raw_html = lines.join("\n")

		e = create_md_element(:raw_html)

		begin
			e.meta[:parsed_html] = Document.new(raw_html)
		rescue 
			$stderr.puts "Malformed block of HTML:\n#{raw_html}"
		end
		
		e.meta[:raw_html] = raw_html
		e
	end
	
	def read_paragraph
		lines = []
		while cur_line && cur_line_node_type == :text
			lines << shift_line
		end
#		dbg_describe_ary(lines, 'PAR')
		children = parse_lines_as_span(lines)

		e = create_md_element(:paragraph, children)
	end
	
	
	
	# Reads one list item, either ordered or unordered.
	def read_list_item
		item_type = cur_line_node_type
		first = shift_line

		# Ugly things going on inside `read_indented_content`
		indentation = spaces_before_first_char(first)
		break_list = [:ulist, :olist]
		lines, want_my_paragraph = 
			read_indented_content(indentation, break_list, item_type)

		# add first line
			# Strip first '*' or '-' from first line
			stripped = first[indentation, first.size-1]
		lines.unshift stripped
		
		e = create_md_element(:li)
		e.children = parse_lines_as_markdown(lines)
		e.meta[:want_my_paragraph] = want_my_paragraph|| (e.children.size>1)
		e
	end

	def read_abbreviation
		shift_line =~ Abbreviation
		abbrev = $1
		description = $2
		
		@abbreviations[abbrev] = description
	end
	
	def read_footnote_text
		first = shift_line
		
		first =~ FootnoteText
		id = $1
		text = $2

		# Ugly things going on inside `read_indented_content`
		indentation = 4 #first.size-text.size
		
#		puts "id =_#{id}_; text=_#{text}_ indent=#{indentation}"
		
		break_list = [:footnote_text]
		item_type = :footnote_text
		lines, want_my_paragraph = 
			read_indented_content(indentation, break_list, item_type)

		# add first line
		if text && text.strip != "" then lines.unshift text end
		
		
#		dbg_describe_ary(lines, 'FOOTNOTE')
		children = parse_lines_as_markdown(lines)
		@footnotes[id] = create_md_element(:footnote, children)

	end


	# This is the only ugly function in the code base.
	# It is used to read list items, descriptions, footnote text
	def read_indented_content(indentation, break_list, item_type)
			lines =[]
			# collect all indented lines
			saw_empty = false; saw_anything_after = false
			while cur_line 
				if cur_line_node_type == :empty
					saw_empty = true
					lines << shift_line
					next
				end
			
				# after a white line
				if saw_empty
					# we expect things to be properly aligned
					if number_of_leading_spaces(cur_line) < indentation
#						debug "breaking for spaces: #{cur_line}"
						break
					end
					saw_anything_after = true
				else
					break if break_list.include? cur_line_node_type
	#				break if cur_line_node_type != :text
				end
			
	#			debug "Accepted '#{cur_line}'"

				stripped = strip_indent(shift_line, indentation)
				lines << stripped
			
				# You are only required to indent the first line of 
				# a child paragraph.
				if line_node_type(stripped) == :text
					while cur_line && (cur_line_node_type == :text)
						lines << strip_indent(shift_line, indentation)
					end
				end
			end

			want_my_paragraph = saw_anything_after || 
				(saw_empty && (cur_line  && (cur_line_node_type == item_type))) 
		
	#		dbg_describe_ary(lines, 'LI')
			# create a new context 
		
			while lines.last && (line_node_type(lines.last) == :empty)
				lines.pop
			end
			
			return lines, want_my_paragraph
		end

	
	def read_quote
		lines = []
		# collect all indented lines
		while cur_line && line_node_type(cur_line) == :quote
			lines << unquote(shift_line)
		end
#		dbg_describe_ary(lines, 'QUOTE')

		e = create_md_element(:quote)
		e.children = parse_lines_as_markdown(lines)
		e
	end

	def read_code
		e = create_md_element(:code)
		# collect all indented lines
		lines = []
		while cur_line && ([:code, :empty].include? cur_line_node_type)
			lines << strip_indent(shift_line, 4)
		end
		
		while lines.last && (line_node_type(lines.last) == :empty )
			lines.pop 
		end
		
		return nil if lines.empty?
		
#		dbg_describe_ary(lines, 'CODE')
		e.meta[:raw_code] = lines.join("\n")
		e
	end

	# Reads a series of metadata lines with empty lines in between
	def read_metadata
		hash = {}
		while cur_line 
			case cur_line_node_type
				when :empty;  shift_line
				when :metadata; hash.merge! parse_metadata(shift_line)
				else break
			end
		end
		hash
	end
	
	# parse one metadata line
	def parse_metadata(l)
		hash = {}
		# remove leading '@'
		l = l[1, l.size].strip
		l.split(';').each do |kv|
			k, v = kv.split(':')
			v ||= 'true'
			k = k.strip.to_sym
			hash[k] = v.strip
		end
		hash 
	end
	
	def read_ref
		line = shift_line
		
		# if link is incomplete, shift next line
		while cur_line && (cur_line_node_type != :ref) && 
			([1,2,3].include? number_of_leading_spaces(cur_line) )
			line += " "+ shift_line
		end
		
#		puts "total= #{line}"
		
		if match = LinkRegex.match(line)
			id = match[1]; url = match[2]; title = match[3]; 
			id = id.strip.downcase
			
			hash = self.refs[id] = {:url=>url,:title=>title}
			
			stuff=match[4]
			
			if stuff
				stuff.split.each do |couple|
#					puts "found #{couple}"
					k, v = couple.split('=')
					if v[0,1]=='"' then v = v[1, v.size-2] end
#					puts "key:_#{k}_ value=_#{v}_"
					hash[k.to_sym] = v
				end
			end
#			puts hash.inspect
			
		else
			raise "Link does not respect format: '#{line}'"
		end
	end
	
	def read_table
		
		def split_cells(s)
			s.strip.split('|').select{|x|x.strip.size>0}.map{|x|x.strip}
		end
		
		head = split_cells(shift_line).map{|s|
			create_md_element(:head_cell, parse_lines_as_span([s]))}
			
		separator=split_cells(shift_line)

		align = separator.map { |s|  s =~ Sep
			if $1 and $2 then :center elsif $2 then :right else :left end }
				
		num_columns = align.size
		
		if head.size != num_columns
			$stderr.puts "Head does not have #{num_columns} columns: \n#{head.inspect}"
			return create_md_element(:linebreak)
		end
				
		rows = []
		
		while cur_line && cur_line =~ /\|/
			row = split_cells(shift_line).map{|s|
				create_md_element(:cell, parse_lines_as_span([s]))}
			if head.size != num_columns
				$stderr.puts "Row does not have #{num_columns} columns: \n#{row.inspect}"
				return create_md_element(:linebreak)
			end
			rows << row
		end

		e = create_md_element(:table)
		e.meta[:align] = align
		e.children = (head+rows).flatten
		e
	end
	
	# If current line is text, a definition list is coming
	# if 1) text,empty,[text,empty]*,definition
	
	def eventually_comes_a_def_list
		future = create_next_string 
		ok = future =~ %r{^t+e?d}x
#		puts "future: #{future} - #{ok}"
		ok
	end
	
	# Returns the type of next line as a string
	# breaks at first :definition
	def create_next_string
		s = ""; num_e = 0;
		for line in top
			c = case line_node_type(line)
				when :text; "t"
				when :empty; num_e+=1; "e"
				when :definition; "d"
				else "o"
			end
			s += c
			break if c == "d" or num_e>1
		end
		s	
	end
		
	def read_definition
		# Read one or more terms
		terms = []
		while  cur_line &&  cur_line_node_type == :text
			terms << create_md_element(:definition_term, parse_lines_as_span([shift_line]))
		end
#		dbg_describe_ary(terms, 'DT')

		want_paragraph = false

		raise "Bug!Bug" if not cur_line
					
		# one optional empty
		if cur_line_node_type == :empty
			want_my_paragraph = true
			shift_line
		end
		
		raise "Bug!Bug" if cur_line_node_type != :definition
		
		# Read one or more definitions
		definitions = []
		while cur_line && cur_line_node_type == :definition
			first = shift_line
			first =~ Definition
			first = $1
			
			# I know, it's ugly!!!

			lines, w_m_p = 
				read_indented_content(4, [:definition], :definition)
			want_my_paragraph ||= w_m_p
		
			lines.unshift first
			
#			dbg_describe_ary(lines, 'DD')
			
			children = parse_lines_as_markdown(lines)
			definitions << create_md_element(:definition_data, children)
		end
		
		definition = create_md_element(:definition)
		definition.meta[:terms] = terms
		definition.meta[:definitions] = definitions
		definition.children = terms + definitions
		definition.meta[:want_my_paragraph] = want_my_paragraph
		definition
	end
end

