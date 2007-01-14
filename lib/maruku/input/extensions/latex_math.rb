# At least one slash inside
#RegInlineMath1 = /\$([^\$]*[\\][^\$]*)\$/
# No spaces around the delimiters
#RegInlineMath2 = /\$([^\s\$](?:[^\$]*[^\s\$])?)\$/
#RegInlineMath = Regexp::union(RegInlineMath1,RegInlineMath2)

# Everything goes; takes care of escaping the "\$" inside the expression
RegInlineMath = /\${1}((?:[^\$]|\\\$)+)\$/
	
	MaRuKu::In::Markdown::
	register_span_extension(:chars => ?$, :regexp => RegInlineMath) do |doc, src, con|
		if m = src.read_regexp(RegInlineMath)
			math = m.captures.compact.first
			con.push doc.md_inline_math(math)
			true
		else
			#puts "not math: #{src.cur_chars 10}"
			false
		end
	end
	
#	Equation = /^\s{0,3}(?:\\\[|\$\$)(.*)(?:\\\]|\$\$)\s*(\(\w+\))?\s*$/
	EquationStart = /^\s{0,3}(?:\\\[|\$\$)(.*)$/
	
	MaRuKu::In::Markdown::
	register_block_extension(:regexp  => EquationStart) do |doc, src, con|
		
		# todo ...
		
		false
	end
	
	# This adds support for \eqref
	
	RegEqref = /\\eqref\{(\w+)\}/
	MaRuKu::In::Markdown::
	register_span_extension(:chars => ?\\, :regexp => RegEqref) do |doc, src, con|
		m = src.read_regexp(RegEqref)
		eqid = m[1]
	
		r = doc.md_el(:eqref, [], meta={:eqid=>eqid})
		con.push r
	 	true 
	end

	module MaRuKu; class MDElement
		def to_html_eqref
			Text.new 'eqref'
		end
		
	end end
	
	
	module MaRuKu; module Out; module HTML

		def to_html_inline_math_none
			# You can: either return a REXML::Element
			#    return Element.new 'div'    
			# or return an empty array on error
			#    return []  
			# or have a string parsed by REXML:
			tex = self.math
			tex.gsub!('&','&amp;')
			mathml = "<code>#{tex}</code>"
			return Document.new(mathml).root
		end

		def to_html_equation_none
			return to_html_inline_math_none
		end

	end end end
	




