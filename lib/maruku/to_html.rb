require 'rexml/document'

require 'rubygems'
require 'syntax'
require 'syntax/convertors/html'


class Maruku
	include REXML

	# Render as an HTML fragment (no head, just the content of BODY). (returns a string)
	def to_html
		div = Element.new 'dummy'
			children_to_html.each do |e|
				div << e
			end

			# render footnotes
			if @doc.meta[:footnotes_used]
				div << render_footnotes
			end
		
		# REXML Bug? if indent!=-1 whitespace is not respected for 'pre' elements
		# containing code.
		xml =""
		div.write_children(xml,indent=-1,transitive=false,ie_hack=true)
		xml
	end
	
	# Render to a complete HTML document (returns a string)
	def to_html_document
		doc = to_html_document_tree
		xml  = "" 
		
		# REXML Bug? if indent!=-1 whitespace is not respected for 'pre' elements
		# containing code.
		doc.write(xml,indent=-1,transitive=false,ie_hack=true);
		xhtml10strict  = "<?xml version='1.0'?>
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN'
'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'>\n"
		xhtml10strict + xml
	end
	
	# Render to a complete HTML document (returns a REXML document tree)
	def to_html_document_tree
		doc = Document.new(nil,{:respect_whitespace =>:all})
	#	doc << XMLDecl.new
		
		root = Element.new('html', doc)
		root.add_namespace('http://www.w3.org/1999/xhtml')
		
		lang = @meta[:lang] || 'en'
		root.attributes['lang'] = lang
		root.attributes['xml:lang'] = lang
		
		head = Element.new 'head', root
		
			# Create title element
			doc_title = @meta[:title] || @meta[:subject] || ""
			title = Element.new 'title'
				title << Text.new(doc_title)
			head << title
			
			
			css = @meta[:css]
			if css
				# <link type="text/css" rel="stylesheet" href="..." />
				link = Element.new 'link'
				link.attributes['type'] = 'text/css'
				link.attributes['rel'] = 'stylesheet'
				link.attributes['href'] = css
				head << link
			end
			
		body = Element.new 'body'
		
			children_to_html.each do |e|
				body << e
			end

			# render footnotes
			if @doc.meta[:footnotes_used]
				body << render_footnotes
			end
		
			
		root << head
		root << body
		
		doc
	end
	
	def render_footnotes
		div = Element.new 'div'
		div.attributes['class'] = 'footnotes'
		div <<  Element.new('hr')
			ol = Element.new 'ol'
			@doc.meta[:footnotes_used].each_with_index do |fid, i| num = i+1
				f = @footnotes[fid]
				if f
					li =  f.wrap_as_element('li')
					li.attributes['id'] = "fn:#{num}"
					
					a = Element.new 'a'
						a.attributes['href'] = "#fnref:#{num}"
						a.attributes['rev'] = 'footnote'
						a<< Text.new('&#8617;', true, nil, true)
					li.children.last << a
					ol << li
				else
					$stderr.puts "Could not find footnote '#{fid}'"
				end
			end
		div << ol
		div
	end
end

class String
	# A string is rendered into HTML by creating
	# a REXML::Text node. REXML takes care of all the encoding.
	def to_html
		REXML::Text.new(self)
	end
end

class MDElement

	def to_html_hrule; Element.new 'hr' end
	def to_html_linebreak; Element.new 'br' end

	# renders children as html and wraps into an element of given name
	# 
	# Sets 'id' if meta is set
	def wrap_as_element(name)
		m = create_html_element name
			children_to_html.each do |e| m << e; end
		m
	end
	
	def create_html_element(name)
		m = Element.new name
			if @meta[:id] then m.attributes['id'] = @meta[:id].to_s end
			if @meta[:style] then m.attributes['style'] = @meta[:style].to_s end
			if @meta[:class] then m.attributes['class'] = @meta[:class].to_s end
		m
	end

	def to_html_paragraph; wrap_as_element('p')                end
	def to_html_ul;        wrap_as_element('ul')               end
	def to_html_ol;        wrap_as_element('ol')               end
	def to_html_li;        wrap_as_element('li')               end
	def to_html_li_span;   wrap_as_element('li')               end
	def to_html_quote;     wrap_as_element('blockquote')       end
	def to_html_strong;    wrap_as_element('strong')           end
	def to_html_emphasis;  wrap_as_element('em')               end
	def to_html_header;    wrap_as_element "h#{@meta[:level]}" end

	def source2html(source)
		source = source.gsub(/&/,'&amp;')
		source = Text.normalize(source)
		Text.new(source, true, nil, false )
	end
		
	def to_html_code; 
		source = self.meta[:raw_code]	

		lang = self.meta[:lang] || @doc.meta[:code_lang] 

		lang = 'xml' if lang=='html'
		use_syntax = @doc.meta[:html_use_syntax] 
		
		element = 
		if use_syntax && lang
			convertor = Syntax::Convertors::HTML.for_syntax lang
			html = convertor.convert( source )
			
			show_spaces = get_setting(:code_show_spaces) 
			if show_spaces
				s.gsub!(/\t/,'&raquo;'+'&nbsp;'*3)
				s.gsub!(/ /,'&not;')
			end
			
#			puts "html: #{html}"
			pre = Document.new(html, {:respect_whitespace =>:all}).root
			pre.attributes['class'] = lang
#			puts "After: #{pre}"
			pre
		else
			pre = Element.new 'pre'
			s = source
			
			s  = s.gsub(/&/,'&amp;')
			s = Text.normalize(s)

			show_spaces = get_setting(:code_show_spaces) 
			if show_spaces
				s.gsub!(/\t/,'&raquo;'+'&nbsp;'*3)
				s.gsub!(/ /,'&not;')
			end

			text = Text.new(s, true, nil, false )
			
			pre << text
			pre
		end
		
		color = get_setting(:code_background_color,DEFAULT_CODE_COLOR)
		if color
			element.attributes['style'] = "background-color: #{color};"
		end
		element
	end

	def to_html_inline_code; 
		pre = Element.new 'tt'
			source = self.meta[:raw_code]
			pre << source2html(source) 
			
			color = get_setting(:code_background_color, DEFAULT_CODE_COLOR)
			if color
				pre.attributes['style'] = "background-color: #{color};"
			end
			
		pre
	end

	def to_html_immediate_link
		a = Element.new 'a'
		url = @meta[:url]
		text = url
		text = text.gsub(/^mailto:/,'') # don't show mailto
		a << Text.new(text)
		a.attributes['href'] = url
		a
	end
	
	def to_html_link
		a =  wrap_as_element 'a'
		
		id = @meta[:ref_id]
		ref = @doc.refs[id]
		if not ref
			$stderr.puts "Could not find id = '#{id}'"
		else
			url = ref[:url]
			title = ref[:title]
			a.attributes['href'] = url
			a.attributes['title'] = title if title
		end
		a
	end
	
##### Email address
	
	def obfuscate(s)
		res = ''
		s.each_byte do |char|
			res +=  "&#%03d;" % char
		end
		res
	end
	
	def to_html_email_address
		email = @meta[:email]
		a = Element.new 'a'
			#a.attributes['href'] = Text.new("mailto:"+obfuscate(email),false,nil,true)
			#a.attributes.add Attribute.new('href',Text.new(
			#"mailto:"+obfuscate(email),false,nil,true))
			# Sorry, for the moment it doesn't work
			a.attributes['href'] = "mailto:#{email}"
			
			a << Text.new(obfuscate(email),false,nil,true)
		a
	end

##### Images

	def to_html_image
		a =  Element.new 'img'
		id = @meta[:ref_id]
		ref = @doc.refs[id]
		if not ref
			$stderr.puts "Could not find id = '#{id}'"
		else
			url = ref[:url]
			a.attributes['src'] = url
#			puts ref.inspect
			[:title, :class, :style].each do |s| 
				if ref[s] then
					a.attributes[s.to_s] = ref[s]
				end
			end
			
		end
		a
	end

	def to_html_raw_html
		if @meta[:parsed_html]
			return @meta[:parsed_html].root
		else # invalid
			raw_html = @meta[:raw_html]
			# Creates red box with offending HTML
			$stderr.puts "Malformed HTML: #{raw_html}"
			div = Element.new('pre')
			div.attributes['style'] = 'border: solid 3px red; background-color: pink'
			div.attributes['class'] = 'markdown-html-error'
			div << Text.new("HTML parse error: \n#{raw_html}", true)
			return div
		end
	end

	def to_html_abbreviation
		abbr = Element.new 'abbr'
		abbr << Text.new(children[0])
		abbr.attributes['title'] = self.meta[:title] if self.meta[:title]
		abbr
	end
	
	def to_html_footnote_reference
		id = @meta[:footnote_id]
		
		# save the order of used footnotes
		order = (@doc.meta[:footnotes_used] ||= [])
		
		# take next number
		order << id
		num = order.size; 
		
		sup = Element.new 'sup'
		sup.attributes['id'] = "fnref:#{num}"
			a = Element.new 'a'
			a << Text.new(num.to_s)
			a.attributes['href'] = "\#fn:#{num}"
			a.attributes['rel'] = 'footnote'
		sup << a
			
		sup
	end
## Definition lists ###
	def to_html_definition_list
		wrap_as_element('dl')
	end
	def to_html_definition		
		children_to_html
	end
	def to_html_definition_term; wrap_as_element('dt') end
	def to_html_definition_data; wrap_as_element('dd') end	

## Table ###	
	def to_html_table
		align = @meta[:align]
		num_columns = align.size

		head = @children.slice(0, num_columns)
		rows = []
		i = num_columns
		while i<@children.size
			rows << @children.slice(i, num_columns)
			i+=num_columns
		end
		
		table = create_html_element 'table'
			thead = Element.new 'thead'
			tr = Element.new 'tr'
				array_to_html(head).each do |x| tr<<x end
			thead << tr
			table << thead
			
			tbody = Element.new 'tbody'
			rows.each do |row|
				tr = Element.new 'tr'
					array_to_html(row).each_with_index do |x,i| 
						x.attributes['style'] ="text-align: #{align[i].to_s};" 
						tr<<x 
					end
						
				tbody << tr
			end
			table << tbody
		table
	end
	
	def to_html_head_cell; wrap_as_element('th') end
	def to_html_cell; wrap_as_element('td') end
	

end

# We only want to output the children in Maruku::to_html
class REXML::Element; public :write_children end

# Some utilities
class MDElement
	include REXML
	
	# Convert each child to html
	def children_to_html
		array_to_html(@children)
	end

	def array_to_html(array)
		e = []
		array.each do |c|
			method = c.kind_of?(MDElement) ? 
			   "to_html_#{c.node_type}" : "to_html"
			
			if not c.respond_to?(method)
				raise "Object does not answer to #{method}: #{c.class} #{c.inspect}"
			end
			
			h =  c.send(method)
			
			if h.nil?
				raise "Nil html for #{c.inspect} created with method #{method}"
			end
			
			if h.kind_of?Array
				e = e + h #h.each do |hh| e << hh end
			else
				e << h
			end
		end
		e
	end
	
end


