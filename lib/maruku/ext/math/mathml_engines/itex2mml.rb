module MaRuKu::Out::HTML
  def convert_to_mathml_itex2mml(kind, tex)
    return if $already_warned_itex2mml
    begin
      require 'itextomml'
    rescue LoadError => e
      maruku_error "Could not load package 'itex2mml'.\nPlease install it." unless $already_warned_itex2mml
      $already_warned_itex2mml = true
      return nil
    end

    parser = Itex2MML::Parser.new
    mathml =
      case kind
      when :equation
        parser.block_filter(tex)
      when :inline
        parser.inline_filter(tex)
      else
        maruku_error "Unknown itex2mml kind: #{kind}"
        return
      end
    
    if mathml.respond_to?(:force_encoding)
      mathml = mathml.force_encoding("UTF-8")
    end

    MaRuKu::HTMLFragment.new(mathml)
  rescue => e
    maruku_error "Invalid MathML TeX: \n#{tex.gsub(/^/, 'tex>')}\n\n #{e.inspect}"
    nil
  end
end

