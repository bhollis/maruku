

# At least one slash inside
RegInlineMath1 = /\$([^\$]*[\\][^\$]*)\$/
# No spaces around the delimiters
RegInlineMath2 = /\$([^\s\$](?:[^\$]*[^\s\$])?)\$/

RegInlineMath = Regexp::union(RegInlineMath1,RegInlineMath2)
	
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
		p r
	 	true 
	end

	module MaRuKu; class MDElement
		def to_html_eqref
			Text.new 'eqref'
		end
		
	end end




