module MaRuKu; module Out; module HTML

  require 'maruku/string_utils'
  require 'nokogiri'

	def convert_to_mathml_none(kind, tex)
    d = Nokogiri::XML::Document.new
    code = Nokogiri::XML::Element.new('code', d)
    tex_node = Nokogiri::XML::Text.new(tex, d)
    code << tex_node
    code
	end

	def convert_to_png_none(kind, tex)
		return nil
	end


end end end

