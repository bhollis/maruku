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


require 'rexml/document'

require 'rubygems'
require 'syntax'
require 'syntax/convertors/html'


class String
	# A string is rendered into HTML by creating
	# a REXML::Text node. REXML takes care of all the encoding.
	def to_html
		REXML::Text.new(self)
	end
end


class REXML::Element
	# We only want to output the children in Maruku::to_html
	 public :write_children 
end



# This module groups all functions related to HTML export.
module MaRuKu; module Out; module HTML
	include REXML
	include MaRuKu::Defaults
	
	# Render as an HTML fragment (no head, just the content of BODY). (returns a string)
	def to_html(context={})
		indent = context[:indent] || -1
		ie_hack = context[:ie_hack] ||true
		
		div = Element.new 'dummy'
			children_to_html.each do |e|
				div << e
			end

			# render footnotes
			if @doc.footnotes_order.size > 0
				div << render_footnotes
			end
		
		doc = Document.new(nil,{:respect_whitespace =>:all})
		doc << div
		#add_whitespace(doc)
		
		# REXML Bug? if indent!=-1 whitespace is not respected for 'pre' elements
		# containing code.
		xml =""
		div.write_children(xml,indent,transitive=true,ie_hack)
		xml
	end
	
	# Render to a complete HTML document (returns a string)
	def to_html_document(context={})
		indent = context[:indent] || -1
		ie_hack = context[:ie_hack] ||true
		doc = to_html_document_tree
		xml  = "" 
		
		# REXML Bug? if indent!=-1 whitespace is not respected for 'pre' elements
		# containing code.
		doc.write(xml,indent,transitive=true,ie_hack);
				
		xhtml10strict  = "<?xml version='1.0' encoding='utf-8'?>
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
		
		lang = @attributes[:lang] || 'en'
		root.attributes['lang'] = lang
		root.attributes['xml:lang'] = lang
		
		head = Element.new 'head', root
		
			#<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
			me = Element.new 'meta', head
			me.attributes['http-equiv'] = 'Content-type'
			me.attributes['content'] = 'text/html; charset=utf-8'	
		
			# Create title element
			doc_title = @attributes[:title] || @attributes[:subject] || ""
			title = Element.new 'title', head
				title << Text.new(doc_title)
				
			# Encoding
			
			
			
			css = @attributes[:css]
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
			if @doc.footnotes_order.size > 0
				body << render_footnotes
			end
			
			# When we are rendering a whole document, we add a signature 
			# at the bottom. 
			body << maruku_html_signature
			
		root << body
		
	#	add_whitespace(doc)
		doc
	end
	
	def add_whitespace(element)
		blocks = ['p','pre','h1','h2','h3','h4','h5','h6',
			'style','table','div','ul','ol','li','dl','dt',
			'head','blockquote','tr','thead','td','dd','title',
			'link','hr']
			
		element.get_elements( "//*" ).each do |e|
			if blocks.include? e.name
				e.parent.insert_before(e, Text.new("\n"))
				e.parent.insert_after(e, Text.new("\n"))
			end
		end

		element.get_elements( "//br" ).each do |e|
			e.parent.insert_after(e, Text.new("\n"))
		end
	end
	
	# returns "st","nd","rd" or "th" as appropriate
	def day_suffix(day)
		case day%10
			when 1; 'st'
			when 2; 'nd'
			when 3; 'rd'
			else 'th'
		end
	end

	# formats a nice date
	def nice_date
		t = Time.now
		t.strftime(" at %H:%M on ")+
		t.strftime("%A, %B %d")+
		day_suffix(t.day)+
		t.strftime(", %Y")
	end
	
	def maruku_html_signature		
		div = Element.new 'div'
			div.attributes['class'] = 'maruku_signature'
			Element.new 'hr', div
			span = Element.new 'span', div
				span.attributes['style'] = 'font-size: small; font-style: italic'
				span << Text.new('Created by ')
				a = Element.new('a', span)
					a.attributes['href'] = 'http://maruku.rubyforge.org'
					a.attributes['title'] = 'Maruku: a Markdown interpreter'
					a << Text.new('Maruku')
				span << Text.new(nice_date+".")
		div
	end
	
	def render_footnotes
		div = Element.new 'div'
		div.attributes['class'] = 'footnotes'
		div <<  Element.new('hr')
			ol = Element.new 'ol'
			@doc.footnotes_order.each_with_index do |fid, i| num = i+1
				f = self.footnotes[fid]
				if f
					li = f.wrap_as_element('li')
					li.attributes['id'] = "fn:#{num}"
					
					a = Element.new 'a'
						a.attributes['href'] = "#fnref:#{num}"
						a.attributes['rev'] = 'footnote'
						a<< Text.new('&#8617;', true, nil, true)
					li.insert_after(li.children.last, a)
					ol << li
				else
					maruku_error"Could not find footnote '#{fid}'"
				end
			end
		div << ol
		div
	end


	def to_html_hrule; create_html_element 'hr' end
	def to_html_linebreak; Element.new 'br' end

	# renders children as html and wraps into an element of given name
	# 
	# Sets 'id' if meta is set
	def wrap_as_element(name)
		m = create_html_element name
			children_to_html.each do |e| m << e; end
			
#			m << Comment.new( "{"+self.al.to_md+"}") if not self.al.empty?
#			m << Comment.new( @attributes.inspect) if not @attributes.empty?
		m
	end
	
	def create_html_element(name)
		m = Element.new name
			if (v=@attributes[:id]   ) then m.attributes['id'   ] = v.to_s end
			if (v=@attributes[:style]) then m.attributes['style'] = v.to_s end
			if (v=@attributes[:class]) then m.attributes['class'] = v.to_s end
		m
	end

	
	def to_html_ul
		if @attributes[:toc]
			# render toc
			html_toc = @doc.toc.to_html
			return html_toc
		else
			add_ws  wrap_as_element('ul')               
		end
	end
	
	
	def to_html_paragraph; add_ws wrap_as_element('p')                end
	def to_html_ol;        add_ws wrap_as_element('ol')        end
	def to_html_li;        add_ws wrap_as_element('li')        end
	def to_html_li_span;   add_ws wrap_as_element('li')        end
	def to_html_quote;     add_ws wrap_as_element('blockquote')  end
	def to_html_strong;    wrap_as_element('strong')           end
	def to_html_emphasis;  wrap_as_element('em')               end

	# nil if not applicable, else string
	def section_number
		return nil if not @doc.attributes[:use_numbered_headers]
		
		n = @attributes[:section_number]
		if n && (not n.empty?)
			 n.join('.')+". "
		else
			nil
		end
	end
	
	# nil if not applicable, else SPAN element
	def render_section_number
		# if we are bound to a section, add section number
		if num = section_number
			span = Element.new 'span'
			span.attributes['class'] = 'maruku_section_number'
			span << Text.new(section_number)
			span
		else
			nil
		end
	end
	
	def to_html_header
		element_name = "h#{self.level}" 
		h = wrap_as_element element_name
		
		if span = render_section_number
			h.insert_before(h.children.first, span)
		end
		add_ws h
	end

	def source2html(source)
		source = source.gsub(/&/,'&amp;')
		source = Text.normalize(source)
		Text.new(source, true, nil, false )
	end
		
	def to_html_code; 
		source = self.raw_code

		lang = @attributes[:lang] || @doc.attributes[:code_lang] 

		lang = 'xml' if lang=='html'
		use_syntax = get_setting(:html_use_syntax)
		
		element = 
		if use_syntax && lang
			begin
				convertor = Syntax::Convertors::HTML.for_syntax lang
				
				# eliminate trailing newlines otherwise Syntax crashes
				source = source.gsub(/\n*\Z/,'')
				
				html = convertor.convert( source )
			
				show_spaces = get_setting(:code_show_spaces) 
				if show_spaces
					s.gsub!(/\t/,'&raquo;'+'&nbsp;'*3)
					s.gsub!(/ /,'&not;')
				end
			
				pre = Document.new(html, {:respect_whitespace =>:all}).root
				pre.attributes['class'] = lang
				pre
			rescue Object => e
				maruku_error"Error while using the syntax library for code:\n#{source.inspect}"+
				 "Lang is #{lang} object is: \n"+
				  self.inspect + 
				"\nException: #{e.class}: #{e.message}\n\t#{e.backtrace.join("\n\t")}"
				
				tell_user("Using normal PRE because the syntax library did not work.")
				to_html_code_using_pre(source)
			end
		else
			to_html_code_using_pre(source)
		end
		
		color = get_setting(:code_background_color,DEFAULT_CODE_COLOR)
		if color != DEFAULT_CODE_COLOR
			element.attributes['style'] = "background-color: #{color};"
		end
		element
	end
	
	def to_html_code_using_pre(source)
		pre = Element.new 'pre'
		code = Element.new 'code', pre
		s = source
		
		s  = s.gsub(/&/,'&amp;')
		s = Text.normalize(s)

		show_spaces = get_setting(:code_show_spaces) 
		if show_spaces
			s.gsub!(/\t/,'&raquo;'+'&nbsp;'*3)
			s.gsub!(/ /,'&not;')
		end

		text = Text.new(s, true, nil, false )
		
		code << text
		pre
	end

	def to_html_inline_code; 
		pre = Element.new 'code'
			source = self.raw_code
			pre << source2html(source) 
			
			color = get_setting(:code_background_color, DEFAULT_CODE_COLOR)
			if color != DEFAULT_CODE_COLOR
				pre.attributes['style'] = "background-color: #{color};"
			end
			
		pre
	end

	def to_html_immediate_link
		a = Element.new 'a'
		url = self.url
		text = url.gsub(/^mailto:/,'') # don't show mailto
		a << Text.new(text)
		a.attributes['href'] = url
		a
	end
	
	def to_html_link
		a =  wrap_as_element 'a'
		id = self.ref_id
		# if empty, use text
		if id.size == 0
			id = children.to_s.downcase
		end
		
		if ref = @doc.refs[id]
			url = ref[:url]
			title = ref[:title]
			a.attributes['href']=url if url
			a.attributes['title']=title if title
		else
			maruku_error"Could not find ref_id = #{id.inspect} for #{self.inspect}"
			tell_user "Not creating a link for ref_id = #{id.inspect}."
			return wrap_as_element('span')
		end
		return a
	end
	
	def to_html_im_link
		a =  wrap_as_element 'a'
		url = self.url
		title = self.title
		if url
			a.attributes['href'] = url
			a.attributes['title'] = title if title
		else
			maruku_error"Could not find url in #{self.inspect}"
			tell_user "Not creating a link for ref_id = #{id.inspect}."
			return wrap_as_element('span')
		end
		return a
	end
	
	def add_ws(e)
		[Text.new("\n"), e, Text.new("\n")]
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
		email = self.email
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
		id = self.ref_id
		if ref = @doc.refs[id]
			url = ref[:url]
			a.attributes['src'] = url
			[:title, :class, :style].each do |s| 
				if ref[s] then
					a.attributes[s.to_s] = ref[s]
				end
			end
		else
			maruku_error"Could not find id = #{id.inspect} for\n #{self.inspect}"
			tell_user "Could not create image with ref_id = #{id.inspect};"+
				 +" Using SPAN element as replacement."
				return wrap_as_element('span')
		end
		return a
	end
	
	def to_html_im_image
		a =  Element.new 'img'
		url = self.url
		title = self.title
		if not url
			maruku_error"Image with no url: #{self.inspect}"
			tell_user "Could not create image with ref_id = #{id.inspect};"+
			 +" Using SPAN element as replacement."
			return wrap_as_element('span')
		end
		a.attributes['src'] = url
		a.attributes['title'] = title if title
		return a
	end

	def to_html_raw_html
		raw_html = self.raw_html
		if rexml_doc = @parsed_html
			root = rexml_doc.root
			if root.nil?
				s = "Bug in REXML: root() of Document is nil: \n#{rexml_doc.inspect}\n"+
				"Raw HTML:\n#{raw_html.inspect}"
				maruku_error s
				tell_user 'The REXML version you have has a bug, omitting HTML'
				div = Element.new 'div'
				#div << Text.new(s)
				return div
			end
			
			# copies the @children array (FIXME is it deep?)
			elements =  root.to_a 
			return elements
		else # invalid
			# Creates red box with offending HTML
			tell_user "Wrapping bad html in a PRE with class 'markdown-html-error'\n"+
				add_tabs(raw_html,1,'|')
			pre = Element.new('pre')
			pre.attributes['style'] = 'border: solid 3px red; background-color: pink'
			pre.attributes['class'] = 'markdown-html-error'
			pre << Text.new("HTML parse error: \n#{raw_html}", true)
			return pre
		end
	end

	def to_html_abbr
		abbr = Element.new 'abbr'
		abbr << Text.new(children[0])
		abbr.attributes['title'] = self.title if self.title
		abbr
	end
	
	def to_html_footnote_reference
		id = self.footnote_id
		
		# save the order of used footnotes
		order = @doc.footnotes_order
		
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
		align = self.align
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
	
	def to_html_entity 
		entity_name = self.entity_name
		if entity_name.kind_of? Fixnum
#			Entity.new(entity_name)
			Text.new('&#%d;' % [entity_name],  false, nil, true)
		else
			Text.new('&%s;' % [entity_name])
		end
	end

	def to_html_xml_instr
		target = self.target || ''
		code = self.code || ''
		REXML::Instruction.new(target, code)
	end

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
				#raise "Object does not answer to #{method}: #{c.class} #{c.inspect}"
				next
			end

			h =  c.send(method)

			if h.nil?
				raise "Nil html created by method  #{method}:\n#{h.inspect}\n"+
				" for object #{c.inspect[0,300]}"
			end

			if h.kind_of?Array
				e = e + h #h.each do |hh| e << hh end
			else
				e << h
			end
		end
		e
	end

	def to_html_ref_definition; [] end
	def to_latex_ref_definition; [] end

end # HTML
end # out
end # MaRuKu
