
# run this as:
# ruby -Ilib tests/math/use_itex.rb < private.txt 

require 'maruku'

module MaRuKu MaRuKu; module Out; module HTML
	
	def to_html_inline_math_itex
		puts "inline: " + self.math
		# return Element.new 'div'
		# return []     on error
		return Document.new('<div>PARSED BY ITEX</div>').root
	end
	
	def to_html_equation_itex
		puts "equation: " +  self.math
		# return Element.new 'div'
		return Document.new('<div>PARSED BY ITEX</div>').root
	end

end end end

MaRuKu::Globals[:html_math_engine] = 'itex'

doc = Maruku.new($stdin.read, {:on_error => :raise})

File.open('output.xhtml','w') do |f|
	f.puts doc.to_html_document
end

