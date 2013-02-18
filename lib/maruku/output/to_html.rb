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

require 'nokogiri'
require 'maruku/string_utils'

# This module groups all functions related to HTML export.
module MaRuKu::Out::HTML
  # We don't want indentation because it messes up "pre" and makes
  # things inconsistent between MRI and JRuby
  OUTPUT_OPTIONS = Nokogiri::XML::Node::SaveOptions::DEFAULT_XHTML ^
    Nokogiri::XML::Node::SaveOptions::FORMAT

  # Render as an HTML fragment (no head, just the content of BODY). (returns a string)
  def to_html(context={})
    d = Nokogiri::XML::DocumentFragment.new(xdoc)
    children_to_html.each do |e|
      d << e
    end

    # render footnotes
    unless @doc.footnotes_order.empty?
      d << render_footnotes
    end

    correct_document(d.to_xml(:save_with => OUTPUT_OPTIONS, :encoding => 'UTF-8'))
  end

  Xhtml11_mathml2_svg11 =
    '<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC
    "-//W3C//DTD XHTML 1.1 plus MathML 2.0 plus SVG 1.1//EN"
    "http://www.w3.org/2002/04/xhtml-math-svg/xhtml-math-svg.dtd">
'

  # Render to a complete HTML document (returns a string)
  def to_html_document(context={})
    doc = to_html_document_tree

    xml = correct_document(doc.to_xml(:save_with => OUTPUT_OPTIONS, :encoding => 'UTF-8'))
    Xhtml11_mathml2_svg11 + xml
  end

  # Correct for bugs in JRuby nokogiri
  def correct_document(doc)
    if RUBY_PLATFORM == 'java'
      doc = doc.
        gsub(/<br>/, '<br />'). # JRuby nokogiri bug https://github.com/sparklemotion/nokogiri/issues/834
        gsub(/<hr>/, '<hr />')

      # Fix more JRuby Nokogiri closing slash awfulness
      doc = doc.gsub(/<img(.*?)>/) do |match|
        if ($1.end_with?('/'))
          "<img#{$1}>"
        else
          "<img#{$1} />"
        end
      end
    end

    doc.strip
  end

  # Create an empty XML document to attach nodes to
  def xdoc
    @xdoc ||= Nokogiri::XML::Document.new
  end

  # Helper to create a text node
  def xtext(text)
    Nokogiri::XML::Text.new(text, xdoc)
  end

  # Helper to create an element
  def xelem(type)
    Nokogiri::XML::Element.new(type, xdoc)
  end

  def xml_newline
    xtext "\n"
  end

  #=begin maruku_doc
  # Attribute: title
  # Scope: document
  #
  # Sets the title of the document.
  # If a title is not specified, the first header will be used.
  #
  # These should be equivalent:
  #
  #   Title: my document
  #
  #   Content
  #
  # and
  #
  #   my document
  #   ===========
  #
  #   Content
  #
  # In both cases, the title is set to "my document".
  #=end

  #=begin maruku_doc
  # Attribute: doc_prefix
  # Scope: document
  #
  # String to disambiguate footnote links.
  #=end


  #=begin maruku_doc
  # Attribute: subject
  # Scope: document

  # Synonym for `title`.
  #=end

  #=begin maruku_doc
  # Attribute: css
  # Scope: document
  # Output: HTML
  # Summary: Activates CSS stylesheets for HTML.
  #
  # `css` should be a space-separated list of urls.
  #
  # Example:
  #
  #   CSS: style.css math.css
  #
  #=end

  # Render to a complete HTML document (returns a Nokogiri document tree)
  def to_html_document_tree
    doc = Nokogiri::XML::Document.new

    root = xelem('html')
    root.add_namespace(nil, 'http://www.w3.org/1999/xhtml')
    root.add_namespace('svg', "http://www.w3.org/2000/svg")
    root['xml:lang'] = self.attributes[:lang] || 'en'
    doc << root

    root << xml_newline
    head = xelem('head')
    root << head

    #<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
    me = xelem('meta')
    me['http-equiv'] = 'Content-type'
    me['content'] = 'application/xhtml+xml;charset=utf-8'
    head << me

    %w(description keywords author revised).each do |m|
      if value = self.attributes[m.to_sym]
        meta = xelem('meta')
        meta['name'] = m
        meta['content'] = value.to_s
        head << meta
      end
    end

    self.attributes.each do |k,v|
      if k.to_s =~ /\Ameta-(.*)\Z/
        meta = xelem('meta')
        meta['name'] = $1
        meta['content'] = v.to_s
        head << meta
      end
    end

    # Create title element
    doc_title = self.attributes[:title] || self.attributes[:subject] || ""
    begin
      title_content = Nokogiri::HTML::DocumentFragment.parse(doc_title)
    rescue
      title_content = xtext(doc_title)
    end
    title = xelem('title') << title_content
    head << title
    add_css_to(head)

    root << xml_newline

    body = xelem('body')

    children_to_html.each do |e|
      body << e
    end

    # render footnotes
    unless @doc.footnotes_order.empty?
      body << render_footnotes(@doc)
    end

    # When we are rendering a whole document, we add a signature
    # at the bottom.
    if get_setting(:maruku_signature)
      body << maruku_html_signature
    end

    root << body
    doc
  end

  def add_css_to(head)
    if css_list = self.attributes[:css]
      css_list.split.each do |css|
        # <link type="text/css" rel="stylesheet" href="..." />
        link = xelem('link')
        link['type'] = 'text/css'
        link['rel'] = 'stylesheet'
        link['href'] = css
        head << link << xml_newline
      end
    end
  end

  # returns "st","nd","rd" or "th" as appropriate
  def day_suffix(day)
    s = {
      1 => 'st',
      2 => 'nd',
      3 => 'rd',
      21 => 'st',
      22 => 'nd',
      23 => 'rd',
      31 => 'st'
    }
    s[day] || 'th';
  end

  # formats a nice date
  def nice_date
    Time.now.strftime(" at %H:%M on %A, %B %d") +
      day_suffix(t.day) +
      t.strftime(", %Y")
  end

  def maruku_html_signature
    div = xelem('div')
    div['class'] = 'maruku_signature'
    div << xelem('hr')
    span = xelem('span')
    span['style'] = 'font-size: small; font-style: italic'
    div << span << xtext('Created by ')
    a = xelem('a')
    a['href'] = MaRuKu::MARUKU_URL
    a['title'] = 'Maruku: a Markdown-superset interpreter for Ruby'
    a << xtext('Maruku')
    span << xtext(nice_date + ".")
    div
  end

  def render_footnotes
    div = xelem('div')
    div['class'] = 'footnotes'
    div <<  xelem('hr')
    ol = xelem('ol')

    @doc.footnotes_order.each_with_index do |fid, i|
      num = i + 1
      if f = self.footnotes[fid]
        li = f.wrap_as_element('li')
        li['id'] = "#{get_setting(:doc_prefix)}fn:#{num}"

        a = xelem('a')
        a['href'] = "\##{get_setting(:doc_prefix)}fnref:#{num}"
        a['rev'] = 'footnote'
        a << xtext([8617].pack('U*'))

        last = nil
        li.children.reverse_each do |child|
          unless child.text?
            last = child
            break
          end
        end

        if last && last.name == "p"
          last << xtext(' ') << a
        else
          li.children.last.add_next_sibling(a)
        end
        ol << li
      else
        maruku_error "Could not find footnote id '#{fid}' among [#{self.footnotes.keys.inspect}]."
      end
    end

    div << ol
  end

  def to_html_hrule
    create_html_element 'hr'
  end

  def to_html_linebreak
    create_html_element 'br'
  end

  # renders children as html and wraps into an element of given name
  #
  # Sets 'id' if meta is set
  def wrap_as_element(name, attributes_to_copy=[])
    m = create_html_element(name, attributes_to_copy)
    children_to_html.inject(m, &:<<)
  end

  #=begin maruku_doc
  # Attribute: id
  # Scope: element
  # Output: LaTeX, HTML
  #
  # It is copied as a standard HTML attribute.
  #
  # Moreover, it used as a label name for hyperlinks in both HTML and
  # in PDF.
  #=end

  #=begin maruku_doc
  # Attribute: class
  # Scope: element
  # Output: HTML
  #
  # It is copied as a standard HTML attribute.
  #=end

  #=begin maruku_doc
  # Attribute: style
  # Scope: element
  # Output: HTML
  #
  # It is copied as a standard HTML attribute.
  #=end

  HTML4Attributes = {}

  coreattrs = [:id, :class, :style, :title, :accesskey, :contenteditable, :dir,
               :draggable, :spellcheck, :tabindex]
  i18n = [:lang, :'xml:lang']
  events = [:onclick, :ondblclick, :onmousedown, :onmouseup, :onmouseover,
            :onmousemove, :onmouseout,
            :onkeypress, :onkeydown, :onkeyup]
  common_attrs = coreattrs + i18n + events
  cells = [:align, :char, :charoff, :valign]

  # Each row maps a list of tags to the list of attributes beyond the common_attributes
  # that are valid on those elements
  [
   ['body', [:onload, :onunload]],
   ['a', [:charset, :type, :name, :rel, :rev, :accesskey, :shape, :coords, :tabindex,
          :onfocus,:onblur]],
   ['img', [:longdesc, :name, :height, :width, :alt]],
   ['ol', [:reversed, :start]],
   ['li', [:value]],
   ['table', [:summary, :width, :frame, :rules, :border, :cellspacing, :cellpadding]],
   [%w(q blockquote), [:cite]],
   [%w(ins del), [:cite, :datetime]],
   [%w(colgroup col), [:span, :width] + cells],
   [%w(thead tbody tfoot), cells],
   [%w(td td th), [:abbr, :axis, :headers, :scope, :rowspan, :colspan] + cells],
   [%w(em code strong hr span dl dd dt address div p pre caption ul h1 h2 h3 h4 h5 h6), []]
  ].each do |elements, attributes|
    [*elements].each do |element|
      HTML4Attributes[element] = common_attrs + attributes
    end
  end

  def create_html_element(name, attributes_to_copy=[])
    m = xelem(name)
    Array(HTML4Attributes[name]).each do |att|
      if v = @attributes[att]
        m[att.to_s] = v.to_s
      end
    end
    m
  end

  def to_html_ul
    if @attributes[:toc]
      # render toc
      @doc.toc.to_html
    else
      add_ws wrap_as_element('ul')
    end
  end

  def to_html_paragraph
    add_ws wrap_as_element('p')
  end

  def to_html_ol
    add_ws wrap_as_element('ol')
  end

  def to_html_li
    add_ws wrap_as_element('li')
  end

  def to_html_li_span
    add_ws wrap_as_element('li')
  end

  def to_html_quote
    add_ws wrap_as_element('blockquote')
  end

  def to_html_strong
    wrap_as_element('strong')
  end

  def to_html_emphasis
    wrap_as_element('em')
  end

  #=begin maruku_doc
  # Attribute: use_numbered_headers
  # Scope: document
  # Summary: Activates the numbering of headers.
  #
  # If `true`, section headers will be numbered.
  #
  # In LaTeX export, the numbering of headers is managed
  # by Maruku, to have the same results in both HTML and LaTeX.
  #=end

  # nil if not applicable, else string
  def section_number
    return nil unless get_setting(:use_numbered_headers)

    n = Array(@attributes[:section_number])
    return nil if n.empty?

    n.join('.') + ". "
  end

  # nil if not applicable, else SPAN element
  def render_section_number
    return nil unless section_number

    # if we are bound to a section, add section number
    span = xelem('span')
    span['class'] = 'maruku_section_number'
    span << xtext(section_number)
  end

  def to_html_header
    element_name = "h#{self.level}"
    h = wrap_as_element element_name

    if span = render_section_number
      h.children.first.before(span)
    end

    add_ws h
  end

  #=begin maruku_doc
  # Attribute: html_use_syntax
  # Scope: global, document, element
  # Output: HTML
  # Summary: Enables the use of the `syntax` package.
  # Related: lang, code_lang
  # Default: <?mrk md_code(Globals[:html_use_syntax].to_s) ?>
  #
  # If true, the `syntax` package is used. It supports the `ruby` and `xml`
  # languages. Remember to set the `lang` attribute of the code block.
  #
  # Examples:
  #
  #     require 'maruku'
  #   {:lang=ruby html_use_syntax=true}
  #
  # and
  #
  #     <div style="text-align:center">Div</div>
  #   {:lang=html html_use_syntax=true}
  #
  # produces:
  #
  #   require 'maruku'
  # {:lang=ruby html_use_syntax=true}
  #
  # and
  #
  #   <div style="text-align:center">Div</div>
  # {:lang=html html_use_syntax=true}
  #
  #=end

  $syntax_loaded = false
  def to_html_code
    source = self.raw_code

    lang = self.attributes[:lang] || @doc.attributes[:code_lang]

    lang = 'xml' if lang == 'html'
    lang = 'css21' if lang == 'css'

    use_syntax = get_setting :html_use_syntax

    element =
      if use_syntax && lang
        begin
          unless $syntax_loaded
            require 'rubygems'
            require 'syntax'
            require 'syntax/convertors/html'
            $syntax_loaded = true
          end
          convertor = Syntax::Convertors::HTML.for_syntax lang

          # eliminate trailing newlines otherwise Syntax crashes
          source = source.sub(/\n*\Z/, '')

          html = convertor.convert(source)

          html.gsub!(/\&apos;|'/,'&#39;') # IE bug

          d = Nokogiri::XML::Document.parse(html)
          code = d.root
          code.name = 'code'
          code['lang'] = lang
          code['xml:lang'] = lang

          pre = xelem('pre')
          pre['class'] = lang
          pre << code
          pre
        rescue LoadError => e
          maruku_error "Could not load package 'syntax'.\n" +
            "Please install it, for example using 'gem install syntax'."
          to_html_code_using_pre(source)
        rescue => e
          maruku_error "Error while using the syntax library for code:\n#{source.inspect}" +
            "Lang is #{lang} object is: \n" +
            self.inspect +
            "\nException: #{e.class}: #{e.message}\n\t#{e.backtrace.join("\n\t")}"

          tell_user("Using normal PRE because the syntax library did not work.")
          to_html_code_using_pre(source)
        end
      else
        to_html_code_using_pre(source)
      end

    color = get_setting(:code_background_color)
    if color != MaRuKu::Globals[:code_background_color]
      element['style'] = "background-color: #{color};"
    end

    add_ws element
  end

  #=begin maruku_doc
  # Attribute: code_background_color
  # Scope: global, document, element
  # Summary: Background color for code blocks.
  #
  # The format is either a named color (`green`, `red`) or a CSS color
  # of the form `#ff00ff`.
  #
  # * for **HTML output**, the value is put straight in the `background-color` CSS
  #   property of the block.
  #
  # * for **LaTeX output**, if it is a named color, it must be a color accepted
  #   by the LaTeX `color` packages. If it is of the form `#ff00ff`, Maruku
  #   defines a color using the `\color[rgb]{r,g,b}` macro.
  #
  #   For example, for `#0000ff`, the macro is called as: `\color[rgb]{0,0,1}`.
  #=end


  def to_html_code_using_pre(source)
    pre = create_html_element('pre')
    code = xelem('code')

    if get_setting(:code_show_spaces)
      # 187 = raquo
      # 160 = nbsp
      # 172 = not
      source = source.gsub(/\t/,'&#187;' + '&#160;' * 3).gsub(/ /,'&#172;')
    end

    text = xtext(source)

    if lang = self.attributes[:lang]
      code['lang'] = lang
      code['class'] = lang
    end

    code << text
    pre << code
  end

  def to_html_inline_code
    pre = create_html_element('code')
    source = self.raw_code
    pre << xtext(source)

    color = get_setting(:code_background_color)
    if color != MaRuKu::Globals[:code_background_color]
      pre['style'] = "background-color: #{color};" + (pre['style'] || "")
    end

    pre
  end

  def add_class_to(el, cl)
    el['class'] =
      if already = el['class']
        already + " " + cl
      else
        cl
      end
  end

  def to_html_immediate_link
    a = create_html_element('a')
    a['href'] = self.url
    text = self.url.gsub(/^mailto:/, '') # don't show mailto
    a << xtext(text)
  end

  def to_html_link
    a = wrap_as_element('a')
    id = self.ref_id

    if ref = @doc.refs[sanitize_ref_id(id)] || @doc.refs[sanitize_ref_id(children_to_s)]
      a['href'] = ref[:url] if ref[:url]
      a['title'] = ref[:title] if ref[:title]
    else
      maruku_error "Could not find ref_id = #{id.inspect} for #{self.inspect}\n" +
        "Available refs are #{@doc.refs.keys.inspect}"
      tell_user "Not creating a link for ref_id = #{id.inspect}."
      return "[#{children_to_s}][#{id}]"
    end

    a
  end

  def to_html_im_link
    if self.url
      a = wrap_as_element('a')
      a['href'] = self.url
      a['title'] = self.title if self.title
      a
    else
      maruku_error "Could not find url in #{self.inspect}"
      tell_user "Not creating a link for ref_id = #{id.inspect}."
      wrap_as_element('span')
    end
  end

  def add_ws(e)
    [xml_newline, e, xml_newline]
  end

  ##### Email address

  def obfuscate(s)
    # Because of https://github.com/sparklemotion/nokogiri/issues/835
    # we can't print entity references correctly in JRuby
    return s if RUBY_PLATFORM == 'java'

    s.bytes.inject(Nokogiri::XML::NodeSet.new(xdoc)) do |res, char|
      res << Nokogiri::XML::EntityReference.new(xdoc, "#%03d" % char)
    end
  end

  def to_html_email_address
    a = create_html_element('a')
    # Obfuscation via entity references is dubious, especially now that
    # Nokogiri can't put entity references into attributes.
    a['href'] = "mailto:#{self.email}"
    a << obfuscate(self.email)
  end

  ##### Images

  def to_html_image
    a = create_html_element('img')
    id = self.ref_id
    if ref = @doc.refs[sanitize_ref_id(id)] || @doc.refs[sanitize_ref_id(children_to_s)]
      a['src'] = ref[:url].to_s
      a['alt'] = children_to_s
      a['title'] = ref[:title].to_s if ref[:title]
      a
    else
      maruku_error "Could not find id = #{id.inspect} for\n #{self.inspect}"
      tell_user "Could not create image with ref_id = #{id.inspect};" +
        " Using SPAN element as replacement."
      wrap_as_element('span')
    end
  end

  def to_html_im_image
    if self.url
      a = create_html_element('img')
      a['src'] = self.url.to_s
      a['alt'] = children_to_s
      a['title'] = self.title.to_s if self.title
      a
    else
      maruku_error "Image with no url: #{self.inspect}"
      tell_user "Could not create image with ref_id = #{id.inspect};" +
        " Using SPAN element as replacement."
      wrap_as_element('span')
    end
  end

  #=begin maruku_doc
  # Attribute: filter_html
  # Scope: document
  #
  # If true, raw HTML is discarded from the output.
  #
  #=end

  def to_html_raw_html
    return [] if get_setting(:filter_html)
    return @parsed_html if @parsed_html

    # If there's no parsed HTML
    raw_html = self.raw_html

    # Creates red box with offending HTML
    tell_user "Wrapping bad html in a PRE with class 'markdown-html-error'\n" +
      raw_html.gsub(/^/, '|')
    pre = xelem('pre')
    pre['style'] = 'border: solid 3px red; background-color: pink'
    pre['class'] = 'markdown-html-error'
    pre << xtext("Nokogiri could not parse this XML/HTML: \n#{raw_html}")
  end

  def to_html_abbr
    abbr = xelem('abbr')
    abbr << xtext(children[0])
    abbr['title'] = self.title if self.title
    abbr
  end

  def to_html_footnote_reference
    id = self.footnote_id

    # save the order of used footnotes
    order = @doc.footnotes_order

    # footnote has already been used
    return [] if order.include?(id)

    return [] unless @doc.footnotes[id]

    # take next number
    order << id

    num = order.index(id) + 1

    sup = xelem('sup')
    sup['id'] = "#{get_setting(:doc_prefix)}fnref:#{num}"
    a = xelem('a')
    a << xtext(num.to_s)
    a['href'] = "\##{get_setting(:doc_prefix)}fn:#{num}"
    a['rel'] = 'footnote'
    sup << a
  end

  ## Definition lists ###
  def to_html_definition_list
    add_ws wrap_as_element('dl')
  end

  def to_html_definition
    children_to_html
  end

  def to_html_definition_term
    add_ws wrap_as_element('dt')
  end

  def to_html_definition_data
    add_ws wrap_as_element('dd')
  end

  def to_html_table
    num_columns = self.align.size

    head, *rows = @children.each_slice(num_columns).to_a

    table = create_html_element('table')
    thead = xelem('thead')
    tr = xelem('tr')
    array_to_html(head).inject(tr, &:<<)
    thead << tr
    table << thead

    tbody = xelem('tbody')
    rows.each do |row|
      tr = xelem('tr')
      array_to_html(row).each_with_index do |x, i|
        x['style'] ="text-align: #{self.align[i].to_s};"
        tr << x
      end

      tbody << tr << xml_newline
    end

    table << tbody
  end

  def to_html_head_cell
    wrap_as_element('th')
  end

  def to_html_cell
    if @attributes[:scope]
      wrap_as_element('th', [:scope])
    else
      wrap_as_element('td')
    end
  end

  def to_html_entity
    entity_name = self.entity_name

    if entity = MaRuKu::Out::EntityTable.instance.entity(entity_name)
      entity_name = entity.html_num
    end

    if entity_name.kind_of? Fixnum
      # Work around https://github.com/sparklemotion/nokogiri/issues/835
      # by simply converting numeric entities to unicode characters
      xtext([entity_name].pack('U*'))
    else
      Nokogiri::XML::EntityReference.new(xdoc, entity_name)
    end
  end

  def to_html_xml_instr
    target = self.target || ''
    code = self.code || ''

    # A blank target is invalid XML. Just create a text node?
    if target.empty?
      xtext("<?#{code}?>")
    else
      Nokogiri::XML::ProcessingInstruction.new(xdoc, target, code)
    end
  end

  # Convert each child to html
  def children_to_html
    array_to_html(@children)
  end

  def array_to_html(array)
    e = []
    array.each do |c|
      if c.kind_of?(String)
        e << xtext(c)
      else
        method = c.kind_of?(MaRuKu::MDElement) ? "to_html_#{c.node_type}" : "to_html"
        next unless c.respond_to?(method)

        h = c.send(method)

        unless h
          raise "Nil html created by method  #{method}:\n#{h.inspect}\n" +
            " for object #{c.inspect[0,300]}"
        end

        if h.kind_of? Array
          e.concat h
        else
          e << h
        end
      end
    end
    e
  end

  def to_html_ref_definition
    []
  end

  def to_latex_ref_definition
    []
  end
end
