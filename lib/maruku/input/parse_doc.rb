require 'nokogiri'
require 'strscan'
require 'cgi'

module MaRuKu::In::Markdown::BlockLevelParser

  def parse_doc(s)
    # Remove BOM if it is present
    s = s.sub(/^\xEF\xBB\xBF/u, '')
    meta2 = parse_email_headers(s)
    data = meta2.delete :data

    self.attributes.merge! meta2

=begin maruku_doc
Attribute: encoding
Scope:     document
Summary:   Encoding for the document.

If the `encoding` attribute is specified, then the content
will be converted from the specified encoding to UTF-8.
=end

    enc = self.attributes.delete(:encoding) || 'utf-8'
    if enc.downcase != 'utf-8'
      # Switch to ruby 1.9 String#encode
      # with backward 1.8 compatibility
      if data.respond_to?(:encode!)
        data.encode!('UTF-8', enc)
      else
        require 'iconv'
        data = Iconv.new('utf-8', enc).iconv(data)
      end
    end

    @children = parse_text_as_markdown(data)

    if markdown_extra?
      self.search_abbreviations
      self.substitute_markdown_inside_raw_html
    end

    self.toc = create_toc

    # use title if not set
    self.attributes[:title] ||= toc.header_element.to_s if toc.header_element

    # Now do the attributes magic
    each_element do |e|
      # default attribute list
      if default = self.ald[e.node_type.to_s]
        expand_attribute_list(default, e.attributes)
      end
      expand_attribute_list(e.al, e.attributes)
#     puts "#{e.node_type}: #{e.attributes.inspect}"
    end

=begin maruku_doc
Attribute: unsafe_features
Scope:     global
Summary:   Enables execution of XML instructions.

Disabled by default because of security concerns.
=end

    if Maruku::Globals[:unsafe_features]
      self.execute_code_blocks
      # TODO: remove executed code blocks
    end
  end

  # Expands an attribute list in an Hash
  def expand_attribute_list(al, result)
    al.each do |k, v|
      case k
      when :class
        if result[:class]
          result[:class] << " " << v
        else
          result[:class] = v
        end
      when :id
        result[:id] = v
      when :ref
        if self.ald[v]
          already = (result[:expanded_references] ||= [])
          if !already.include?(v)
            already << v
            expand_attribute_list(self.ald[v], result)
          else
            already << v
            maruku_error "Circular reference between labels.\n\n" +
            "Label #{v.inspect} calls itself via recursion.\nThe recursion is " +
              already.map(&:inspect).join(' => ')
          end
        else
          if result[:unresolved_references]
            result[:unresolved_references] << " " << v
          else
            result[:unresolved_references] = v
          end

          # $stderr.puts "Unresolved reference #{v.inspect} (avail: #{self.ald.keys.inspect})"
          result[v.to_sym] = true
        end
      else
        result[k.to_sym] = v
      end
    end
  end

  def safe_execute_code(object, code)
    begin
      object.instance_eval(code)
    rescue StandardError, ScriptError => e
      maruku_error "Exception while executing this:\n" +
        code.gsub(/^/, ">") +
        "\nThe error was:\n" +
        (e.inspect + "\n" + e.caller.join("\n")).gsub(/^/, "|")
      nil
    end
  end

  def execute_code_blocks
    each_element(:xml_instr) do |e|
      if e.target == 'maruku'
        result = safe_execute_code(e, e.code)
        if result.kind_of?(String)
          puts "Result is : #{result.inspect}"
        end
      end
    end
  end

  def search_abbreviations
    abbreviations.each do |abbrev, title|
      reg = Regexp.new(Regexp.escape(abbrev))
      replace_each_string do |s|
        # bug if many abbreviations are present (agorf)
        p = StringScanner.new(s)
        a = []
        until p.eos?
          o = ''
          o << p.getch until p.scan(reg) or p.eos?
          a << o unless o.empty?
          a << md_abbr(abbrev.dup, title ? title.dup : nil) if p.matched == abbrev
        end
        a
      end
    end
  end

  def span_descendents(e)
    descendents =  Nokogiri::XML::NodeSet.new(xdoc)
    e.element_children.collect do |c|
      if HTML_INLINE_ELEMS.include?(c.name)
        descendents << c
        descendents += span_descendents(c)
      end
    end
    descendents
  end

  # (PHP Markdown extra) Search for elements that have
  # markdown=1 or markdown=block defined
  def substitute_markdown_inside_raw_html
    each_element(:raw_html) do |_e|
      doc = _e.parsed_html
      next unless doc # valid html

      # parse block-level markdown elements in these HTML tags
      block_tags = ['div']

      # find span elements or elements with 'markdown' attribute
      elts = doc.css((["[markdown]"]).join(","))
      d = doc.children.first
      if HTML_INLINE_ELEMS.include?(d.name)
        elts << d unless d.attribute('markdown')
        elts += span_descendents(d)
      end
      elts.each do |e|
        # should we parse block-level or span-level?

        how = e['markdown']
        parse_blocks = (how == 'block') || block_tags.include?(e.name)

        # Select all text children of e
        e.xpath("./text()").each do |original_text|
          s = CGI.escapeHTML(original_text.text)
          if s.strip.size > 0

            parsed = parse_blocks ? parse_text_as_markdown(s) : parse_span(s)
            # restore leading and trailing spaces
            padding =/\A(\s*).*?(\s*)\z/.match(s)
            parsed = [padding[1]] + parsed + [padding[2]]
            el = md_el(:dummy, parsed)

            #Nokogiri collapses consecutive Text nodes, so replace it by a dummy element
            guard = Nokogiri::XML::Element.new('guard', doc)
            original_text.replace(guard)
            el.children_to_html.each do |x|
              guard.before(x)
            end
            guard.remove
          end
        end

        # remove 'markdown' attribute
        e.delete('markdown')
      end
    end
  end
end
