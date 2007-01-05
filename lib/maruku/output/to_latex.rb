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


module MaRuKu
	
class MDDocument

	
	# Render as a LaTeX fragment 
	def to_latex
		children_to_latex
	end

	# Render as a complete LaTeX document 
	def to_latex_document
		header = ""
		
		if @doc.attributes[:latex_use_listings]
			header += "\\usepackage{listings}\n"
		end

		body = to_latex
		
		body += render_latex_signature

"\\documentclass{article}
#{header}
\\usepackage{hyperref}
\\usepackage{xspace}
\\usepackage[usenames,dvipsnames]{color}
\\usepackage[margin=1in]{geometry}
\\hypersetup{colorlinks=true}
%\\usepackage{ucs}
%\\usepackage[utf8x]{inputenc}
\\begin{document} 
#{body}
\\end{document}
"	
	end
	
	
	def render_latex_signature
"\\vfill
\\hrule
\\vspace{1.2mm}
\\begin{tiny}
Created by \\href{http://maruku.rubyforge.org}{Maruku} #{self.nice_date}.
\\end{tiny}"
	end

end end

module MaRuKu; module Out; module Latex
	include Maruku::Defaults
	
	def to_latex_hrule; "\n\\vspace{.5em} \\hrule \\vspace{.5em}\n" end
	def to_latex_linebreak; "\\linebreak " end
	
	def to_latex_paragraph; 
		children_to_latex+"\n\n"
	end

	def get_setting(name, default=nil)
		self.attributes[name] || @doc.attributes[name] || default
	end
	
	# \color[named]{name} 	
	# \color[rgb]{1,0.2,0.3} 
	def latex_color(s, command='color')
		if s =~ /^\#(\w\w)(\w\w)(\w\w)$/
			r = $1.hex; g = $2.hex; b=$3.hex				
			# convert from 0-255 to 0.0-1.0
			r = r / 255.0 
			g = g / 255.0 
			b = b / 255.0 
			
			"\\#{command}[rgb]{%0.2f,%0.2f,%0.2f}" % [r,g,b]
		else
			"\\#{command}{#{s}}"
		end
	end
	
	def to_latex_code;
		raw_code = self.raw_code
		
		if @doc.attributes[:latex_use_listings]
			s = "\\lstset{columns=fixed,frame=shadowbox}"

			show_spaces = get_setting(:code_show_spaces) 
			if show_spaces
				s+= "\\lstset{showspaces=true,showtabs=true}\n"
			else
				s+= "\\lstset{showspaces=false,showtabs=false}\n"
			end
			
			color = latex_color get_setting(:code_background_color,DEFAULT_CODE_COLOR)
			
			s+= "\\lstset{backgroundcolor=#{color}}\n" 
			
			s+= "\\lstset{basicstyle=\\ttfamily\\footnotesize}\n" 
			
			
			lang = self.attributes[:lang] || @doc.attributes[:code_lang] || '{}'
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
		h = TexHeaders[self.level] || 'paragraph'
		
		title = children_to_latex
		if number = section_number
			title = number + title
		end
		
		if id = self.attributes[:id]
			# drop '#' at the beginning
			if id[0,1] == '#' then id = [1,id.size] end
			%{\\hypertarget{%s}{}\\%s*{{%s}}\\label{%s}\n\n} % [ id, h, title, id ]
		else
			%{\\%s*{%s}\n\n} % [ h, title]
		end
	end
	
	
	def to_latex_ul;       
		if self.attributes[:toc]
			@doc.toc.to_latex
		else
			wrap_as_environment('itemize')
		end
	end
		   
	def to_latex_quote;        wrap_as_environment('quote')               end
	def to_latex_ol;        wrap_as_environment('enumerate')               end
	def to_latex_li;        
		"\\item #{children_to_latex}\n"  
	end
	def to_latex_li_span;
		"\\item #{children_to_latex}\n"
	end

	def to_latex_strong;    wrap_as_span('\bf')           end
	def to_latex_emphasis;  wrap_as_span('\em')               end
	
	def wrap_as_span(c)
		"{#{c} #{children_to_latex}}"
	end
	
	def wrap_as_environment(name)
"\\begin{#{name}}%
#{children_to_latex}
\\end{#{name}}\n"	
	end
	
	# the ultimate escaping
	# (is much better than using \verb)
	def latex_escape(source)
		s=""; 
		source.each_byte do |b| s+= "\\char%d" % b end
		s
	end
	
	def to_latex_inline_code; 
		source = self.raw_code
		
		# Convert to printable latex chars 
		s = latex_escape(source)
		
		color = get_setting(:code_background_color,DEFAULT_CODE_COLOR)
		colorspec = latex_color(color, 'colorbox')

		"#{colorspec}{\\tt #{s}}"
	end

	def to_latex_immediate_link
		url = self.url
		return "\\href{#{url}}{#{url.to_latex}}"
	end
	
	def to_latex_link
		if id = self.ref_id
			# if empty, use text
			if id.size == 0
				id = children.to_s.downcase
			end
			
			ref = @doc.refs[id]
			if not ref
				$stderr.puts "Could not find id = '#{id}'"
				return children_to_latex
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
		else
			url = self.url

			if url[0,1] == '#'
				url = url[1,url.size]
				return "\\hyperlink{#{url}}{#{children_to_latex}}"
			else
				return "\\href{#{url}}{#{children_to_latex}}"
			end
		end
	end
	
	def to_latex_email_address
		email = self.email
		"\\href{mailto:#{email}}{#{latex_escape(email)}}"
	end
	
	
	def to_latex_table
		align = self.align
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
		id = self.footnote_id
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
		terms = self.terms
		definitions = self.definitions
		
		s = ""
		terms.each do |t|
			s +="\n\\item[#{t.children_to_latex}] "
		end

		definitions.each do |d|
			s += "#{d.children_to_latex} \n"
		end
		
		s
	end
	

	def to_latex_abbr
		children_to_latex
	end

	def to_latex_image
		id = self.ref_id
		ref = @doc.refs[id]
		if not ref
			$stderr.puts "Could not find id = '#{id}'"
			""
		else
			url = ref[:url]
			"{\\bf Images not supported yet (#{latex_escape(url)})}"
		end

	end


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
		#		raise "Object does not answer to #{method}: #{c.class} #{c.inspect[0,100]}"
				next
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
	
end end end # MaRuKu::Out::Latex
