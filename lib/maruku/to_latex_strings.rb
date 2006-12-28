

class String

	# These are TeX's special characters
	LATEX_ADD_SLASH = [ '{', '}', '$', '&', '#', '_', '%'].map{|x|x[0]}

	# These, we transform to {\tt \char<ascii code>}
	LATEX_TO_CHARCODE = [ '^', '~', '>','<'].map{|x|x[0]}

	def int_to_string(char)
		tmp = "0"; tmp[0]=char; tmp;
	end
	
	def escape_to_latex(s)
		s2 = ""
		s.each_byte do |b|
			if LATEX_TO_CHARCODE.include? b
				s2 += "{\\tt \\char#{b}}" 
			elsif LATEX_ADD_SLASH.include? b
				s2 += "\\"
				s2 += int_to_string(b)
			elsif b == "\\"[0]
			# there is no backslash in cmr10 fonts
				s2 += "$\\backslash$"
			else
				s2 += int_to_string(b)
			end
		end
		s2
	end
	
	# escapes special characters
	def to_latex
		s = self
		
		s = escape_to_latex(s)
		
	
#		puts "Before: #{s.inspect}"
#		puts "after: #{s.inspect}"

		OtherGoodies.each do |k, v|
			s.gsub!(k, v)
		end
		s
	end
	
	# other things that are good on the eyes
	OtherGoodies = {
		/(\s)LaTeX/ => '\1\\LaTeX\\xspace ', # XXX not if already \latex
#		'HTML' => '\\textsc{html}\\xspace ',
#		'PDF' => '\\textsc{pdf}\\xspace '
	}
	
	
	

end