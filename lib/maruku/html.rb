require 'set'
require 'nokogiri'

module MaRuKu
  HTML_INLINE_ELEMS = Set.new %w[a abbr acronym audio b bdi bdo big br button canvas caption cite code
    col colgroup command datalist del details dfn dir em fieldset font form i img input ins
    kbd label legend mark meter optgroup option progress q rp rt ruby s samp section select small
    source span strike strong sub summary sup tbody td tfoot th thead time tr track tt u var video wbr
    animate animateColor animateMotion animateTransform circle clipPath defs desc ellipse
    feGaussianBlur filter font-face font-face-name font-face-src foreignObject g glyph hkern
    linearGradient line marker mask metadata missing-glyph mpath path pattern polygon polyline
    radialGradient rect set stop svg switch text textPath title tspan use
    annotation annotation-xml maction math menclose merror mfrac mfenced mi mmultiscripts mn mo
    mover mpadded mphantom mprescripts mroot mrow mspace msqrt mstyle msub msubsup msup mtable
    mtd mtext mtr munder munderover none semantics] 

  # Parse block-level markdown elements in these HTML tags
  BLOCK_TAGS = %w(div)

  # This gets mixed into HTML MDElement nodes to hold the parsed document fragment
  module HTMLElement
    attr_accessor :parsed_html
  end
  
  class NokogiriHTMLFragment; end

  HTMLFragment = NokogiriHTMLFragment

  # Nokogiri backend for HTML handling
  class NokogiriHTMLFragment

    # Create a new HTMLFragment based on an HTML string.
    # 
    # @param raw_html [String] HTML as a string.
    def initialize(raw_html)
      # Wrap our HTML in a dummy document with a doctype (just
      # for the entity references)
      wrapped = '<!DOCTYPE html PUBLIC
  "-//W3C//DTD XHTML 1.1 plus MathML 2.0 plus SVG 1.1//EN"
  "http://www.w3.org/2002/04/xhtml-math-svg/xhtml-math-svg.dtd">
<html>' + raw_html.strip + '</html>'

      d = Nokogiri::XML::Document.parse(wrapped) {|c| c.nonet }
      @fragment = d.root
    end

    # @return The name of the first child element in the fragment.
    def first_node_name
      first_child = @fragment.children.first
      first_child ? first_child.name : nil
    end

    # Add a class to the children of this fragment
    def add_class(class_name)
      @fragment.children.each do |c|
        c['class'] = ((c['class']||'').split(' ') + [class_name]).join(' ')
      end
    end

    # Process markdown within the contents of some elements and
    # replace their contents with the processed version.
    #
    # @param doc [MaRuKu::MDDocument] A document to process.
    def process_markdown_inside_elements(doc)
      # find span elements or elements with 'markdown' attribute
      elts = @fragment.css("[markdown]")

      d = @fragment.children.first
      if d && HTML_INLINE_ELEMS.include?(d.name)
        elts << d unless d.attribute('markdown')
        elts += span_descendents(d)
      end

      elts.each do |e|
        how = e['markdown']
        e.remove_attribute('markdown')

        next if "0" == how # user requests no markdown parsing inside
        parse_blocks = (how == 'block') || BLOCK_TAGS.include?(e.name)

        # Select all text children of e
        e.xpath("./text()").each do |original_text|
          s = CGI.escapeHTML(original_text.text)
          unless s.strip.empty?
            parsed = parse_blocks ? doc.parse_text_as_markdown(s) : doc.parse_span(s)

            # restore leading and trailing spaces
            padding = /\A(\s*).*?(\s*)\z/.match(s)
            parsed = [padding[1]] + parsed + [padding[2]] if padding

            el = doc.md_el(:dummy, parsed)

            # Nokogiri collapses consecutive Text nodes, so replace it by a dummy element
            guard = Nokogiri::XML::Element.new('guard', @fragment)
            original_text.replace(guard)
            el.children_to_html.each do |x|
              guard.before(x.to_s)
            end
            guard.remove
          end
        end
      end
    end

    # Convert this fragment to an HTML or XHTML string.
    # @return [String]
    def to_html
      output_options = Nokogiri::XML::Node::SaveOptions::DEFAULT_XHTML ^
        Nokogiri::XML::Node::SaveOptions::FORMAT
      @fragment.children.inject("") do |out, child|
        out << child.serialize(:save_with => output_options, :encoding => 'UTF-8')
      end
    end

    private

    # Get all span-level descendents of the given element, recursively, 
    # as a flat NodeSet.
    #
    # @param e [Nokogiri::XML::Node] An element.
    # @return [Nokogiri::XML::NodeSet]
    def span_descendents(e)
      ns = Nokogiri::XML::NodeSet.new(Nokogiri::XML::Document.new)
      e.element_children.inject(ns) do |descendents, c|
        if HTML_INLINE_ELEMS.include?(c.name)
          descendents << c
          descendents += span_descendents(c)
        end
        descendents
      end
    end
  end
end
