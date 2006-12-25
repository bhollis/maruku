

class Maruku
	
	# Render as a LaTeX fragment 
	def to_latex
		children_to_latex
	end

	# Render as a complete LaTeX document 
	def to_latex_document
		header = ""
		
		if @doc.meta[:latex_use_listings]
			header += "\\usepackage{listings}\n"
		end

		body = to_latex

		# I found a fix!! :-)
		# ## xxx only if `...` is used in footnotes
		# header += "\\usepackage{fancyvrb}\n"
		# body = "\\VerbatimFootnotes\n"+body
		
"\\documentclass{article}

#{header}
\\usepackage{hyperref}
%\\usepackage[x11names]{xcolor}
\\usepackage[usenames,dvipsnames]{color}
\\hypersetup{colorlinks=true}
\\begin{document} 
#{body}
\\end{document}
"	
	end

end

class MDElement
	DEFAULT_CODE_COLOR = '#f0f0e0'
end

class MDElement
	
	def to_latex_hrule; "\n\\vspace{.5em} \\hrule \\vspace{.5em}\n" end
	def to_latex_linebreak; "\\linebreak " end
	
	def to_latex_paragraph; 
		children_to_latex+"\n\n"
	end

	def get_setting(name, default=nil)
		self.meta[name] || @doc.meta[name] || default
	end
	
	# Returns the name to use and possibly a declaration to append
	def define_color_if_necessary(color)
		if color =~ /^\#(\w\w)(\w\w)(\w\w)$/
			# init colors hash in document
			hash = (@doc.meta[:defined_colors] ||= {})
			if hash[color] then 
				return hash[color], nil
			else
				r = $1.hex; g = $2.hex; b=$3.hex
				
				colorname = "maruku_color#{hash.size}"
				
				# convert from 0-255 to 0.0-1.0
				r = r / 255.0 
				g = g / 255.0 
				b = b / 255.0 
				declaration = "\\definecolor{#{colorname}}{rgb}{#{r},#{g},#{b}}\n"
				hash[color] = colorname
				
				return colorname, declaration
			end
		else
			color
		end
		
	end
	
	def to_latex_code;
		raw_code = @meta[:raw_code] 
		
		if @doc.meta[:latex_use_listings]
#			puts @meta.inspect
			s = "\\lstset{columns=fixed,frame=shadowbox}"

			show_spaces = get_setting(:code_show_spaces) 
			if show_spaces
				s+= "\\lstset{showspaces=true,showtabs=true}\n"
			else
				s+= "\\lstset{showspaces=false,showtabs=false}\n"
			end
			
			color = get_setting(:code_background_color,DEFAULT_CODE_COLOR)
			if color
				colorname, declaration = define_color_if_necessary(color)
				s+= declaration if declaration
				s+= "\\lstset{backgroundcolor=\\color{#{colorname}}}\n" 
			end

			s+= "\\lstset{basicstyle=\\ttfamily\\footnotesize}\n" 
			
			
			lang = self.meta[:lang] || @doc.meta[:code_lang] || '{}'
			if lang
				s += "\\lstset{language=#{lang}}\n"
			end
			
			"#{s}\n\\begin{lstlisting}\n#{raw_code}\n\\end{lstlisting}"
		else
			"\\begin{verbatim}#{raw_code}\\end{verbatim}\n"
		end
	end
	
	TexHeaders = {
		1=>'section',
		2=>'subsection',
		3=>'subsubsection',
		4=>'paragraph'}

	def to_latex_header
		h = TexHeaders[@meta[:level]] || 'paragraph'
		s = 
		# \hyperdef{category}{name}{text} 

		if @meta[:id]
			id = @meta[:id]
			if id[0,1] == '#' then id = [1,id.size] end
			%{\\hypertarget{%s}{}\\%s*{{%s}}\n\n} % [ id,h,  children_to_latex]
				
#			s + "\\hypertarget{user}{#{id}}{link}"
		else
			%{\\%s*{%s}\n\n} % [ h, children_to_latex]
		end
	end
	
	def to_latex_quote;        wrap_as_environment('quote')               end
	
	def to_latex_ul;        wrap_as_environment('itemize')               end
	def to_latex_ol;        wrap_as_environment('enumerate')               end
	def to_latex_li;        
		"\\item #{children_to_latex}\n"  
	end
	def to_latex_li_span;
		"\\item #{children_to_latex}\n"
	end

	def to_latex_strong;    wrap_as_span('\bf')           end
	def to_latex_emphasis;  wrap_as_span('\em')               end
#	def to_html_header;    wrap_as_element "h#{@meta[:level]}" end
	
	def wrap_as_span(c)
		"{#{c} #{children_to_latex}}"
	end
	def wrap_as_environment(name)
"\\begin{#{name}}%
#{children_to_latex}
\\end{#{name}}\n"	
	end
	
	# the ultimate escaping
	def latex_escape(source)
		s=""; 
		source.each_byte do |b| s+= "\\char%d" % b end
		s
	end
	
	def to_latex_inline_code; 
		source = self.meta[:raw_code]
		
		# Convert to printable latex chars (is much better than using \verb)
		s=latex_escape(source)
			
		color = get_setting(:code_background_color,DEFAULT_CODE_COLOR)
		colorname, declaration = define_color_if_necessary(color)
		(declaration||'')+
		"\\colorbox{#{colorname}}{\\tt #{s}}"
	end

	def to_latex_immediate_link
		url = @meta[:url]
		return "\\href{#{url}}{#{url.to_latex}}"
	end
	
	def to_latex_link
		id = @meta[:ref_id]
		ref = @doc.refs[id]
		if not ref
			$stderr.puts "Could not find id = '#{id}'"
			return title.to_latex
		else
			url = ref[:url]
			#title = ref[:title] || 'no title'

			if url[0,1] == '#'
				url = url[1,url.size]
				return "\\hyperlink{#{url}}{#{children_to_latex}}"
			else
				return "\\href{#{url}}{#{children_to_latex}}"
			end
		end
	end
	
	def to_latex_email_address
		email = @meta[:email]
		"\\href{mailto:#{email}}{#{latex_escape(email)}}"
	end
	
	
	def to_latex_table
		align = @meta[:align]
		num_columns = align.size

		head = @children.slice(0, num_columns)
		rows = []
		i = num_columns
		while i<@children.size
			rows << @children.slice(i, num_columns)
			i+=num_columns
		end
		
		h = {:center=>'c',:left=>'l',:right=>'r'}
		align_string = align.map{|a| h[a]}.join('|')
		
		s = "\\begin{tabular}{#{align_string}}\n"
			
			s += array_to_latex(head, '&') + "\\\\" +"\n"
			
			s += "\\hline \n"
			
			rows.each do |row|
				s += array_to_latex(row, '&') + "\\\\" +"\n"
			end
			
		s += "\\end{tabular}"
		
		# puts table in its own paragraph
		s += "\n\n"
		
		s
	end
	
	
	def to_latex_head_cell; children_to_latex end
	def to_latex_cell; children_to_latex end
	
	
	def to_latex_footnote_reference
		id = @meta[:footnote_id]
		f = @doc.footnotes[id]
		if f
			"\\footnote{#{f.children_to_latex.strip}} "
		else
			$stderr.puts "Could not find footnote '#{fid}'"
		end
	end
	
	def to_latex_raw_html
		'{\bf Raw HTML removed in latex version }'
	end
	
	## Definition lists ###
	def to_latex_definition_list
		s = "\\begin{description}\n"
		s += children_to_latex
		s += "\\end{description}\n"
		s
	end
	
	def to_latex_definition		
		terms = @meta[:terms]
		definitions = @meta[:definitions]
		
		s = ""
		terms.each do |t|
			s +="\n\\item[#{t.children_to_latex}] "
		end

		definitions.each do |d|
			s += "#{d.children_to_latex} \n"
		end
		
		s
	end
#	def to_latex_definition_term; "" end
#	def to_latex_definition_data; "" end	

	def to_latex_abbreviation
		children_to_latex
	end

	def to_latex_image
		id = @meta[:ref_id]
		ref = @doc.refs[id]
		if not ref
			$stderr.puts "Could not find id = '#{id}'"
			""
		else
			url = ref[:url]
			"{\\bf Images not supported yet (#{latex_escape(url)})}"
		end

	end
end


# Some utilities
class MDElement
	
	# Convert each child to html
	def children_to_latex
		array_to_latex(@children)
	end

	def array_to_latex(array, join_char='')
		e = []
		array.each do |c|
			method = c.kind_of?(MDElement) ? 
			   "to_latex_#{c.node_type}" : "to_latex"
			
			if not c.respond_to?(method)
				raise "Object does not answer to #{method}: #{c.class} #{c.inspect[0,100]}"
			end
			
			h =  c.send(method)
			
			if h.nil?
				raise "Nil html for #{c.inspect} created with method #{method}"
			end
			
			if h.kind_of?Array
				e = e + h
			else
				e << h
			end
		end
		e.join(join_char)
	end
	
end

