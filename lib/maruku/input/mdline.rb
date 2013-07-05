# This code does the classification of lines for block-level parsing.
module MaRuKu

  # Represents a single line in a Markdown source file, as produced by 
  # LineSource.
  class MDLine < String
    def md_type
      @md_type ||= line_md_type
    end

    # Returns the number of leading spaces on this string,
    # considering that a tab counts as {MaRuKu::Strings::TAB_SIZE} spaces.
    #
    # @param s [String]
    # @return [Fixnum]
    def number_of_leading_spaces
      spaces = self.scan(/^\s*/).first
      spaces.count(" ") + spaces.count("\t") * MaRuKu::Strings::TAB_SIZE
    end

    def gsub!(*args)
      # Any in-place-modification method should reset the md_type
      @md_type = nil
      super
    end

    private 

    def line_md_type
      # The order of evaluation is important (:text is a catch-all)
      return :text           if self =~ /^[a-zA-Z]/
      return :code           if number_of_leading_spaces >= 4
      return :empty          if self =~ /^\s*$/
      return :footnote_text  if self =~ FootnoteText
      return :ref_definition if self =~ LinkRegex || self =~ IncompleteLink
      return :abbreviation   if self =~ Abbreviation
      return :definition     if self =~ Definition
      # I had a bug with emails and urls at the beginning of the
      # line that were mistaken for raw_html
      return :text           if self =~ /^[ ]{0,3}#{EMailAddress}/
      return :text           if self =~ /^[ ]{0,3}<http:/
      # raw html is like PHP Markdown Extra: at most three spaces before
      return :xml_instr      if self =~ /^\s*<\?/
      return :raw_html       if self =~ %r{^[ ]{0,3}</?\s*\w+}
      return :raw_html       if self =~ /^[ ]{0,3}<\!\-\-/
      return :header1        if self =~ /^(=)+/
      return :header2        if self =~ /^([-\s])+$/
      return :header3        if self =~ /^(#)+\s*\S+/
      # at least three asterisks/hyphens/underscores on a line, and only whitespace
      return :hrule          if self =~ /^(\s*[\*\-_]\s*){3,}$/
      return :ulist          if self =~ /^[ ]{0,3}([\*\-\+])\s+.*/
      return :olist          if self =~ /^[ ]{0,3}\d+\.\s+.*/
      return :quote          if self =~ /^>/
      return :ald            if self =~ AttributeDefinitionList
      return :ial            if self =~ InlineAttributeList
      return :text # else, it's just text
    end
  end

  # MacRuby has trouble with commented regexes, so just put the expanded form
  # in a comment.

  # $1 = id   $2 = attribute list
  AttributeDefinitionList = /^\s{0,3}\{([\w\s]+)\}:\s*(.*?)\s*$/
  #
  InlineAttributeList = /^\s{0,3}\{([:#\.].*?)\}\s*$/
  # Example:
  #     ^:blah blah
  #     ^: blah blah
  #     ^   : blah blah
  Definition = /^[ ]{0,3}:\s*(\S.*)$/
  # %r{
  #   ^ # begin of line
  #   [ ]{0,3} # up to 3 spaces
  #   : # colon
  #   \s* # whitespace
  #   (\S.*) # the text    = $1
  #   $ # end of line
  # }x

  # Example:
  #     *[HTML]: Hyper Text Markup Language
  Abbreviation = /^[ ]{0,3}\*\[([^\]]+)\]:\s*(\S.*\S)*\s*$/
  # %r{
  #   ^  # begin of line
  #   [ ]{0,3} # up to 3 spaces
  #   \* # one asterisk
  #   \[ # opening bracket
  #   ([^\]]+) # any non-closing bracket:  id = $1
  #   \] # closing bracket
  #   :  # colon
  #   \s* # whitespace
  #   (\S.*\S)* #           definition=$2
  #   \s* # strip this whitespace
  #   $   # end of line
  # }x

  FootnoteText = /^[ ]{0,3}\[(\^.+)\]:\s*(\S.*)?$/
  # %r{
  #   ^  # begin of line
  #   [ ]{0,3} # up to 3 spaces
  #   \[(\^.+)\]: # id = $1 (including '^')
  #   \s*(\S.*)?$    # text = $2 (not obb.)
  # }x

  # This regex is taken from BlueCloth sources
  # Link defs are in the form: ^[id]: \n? url "optional title"
  LinkRegex = /^[ ]{0,3}\[([^\[\]]+)\]:[ ]*<?([^>\s]+)>?[ ]*(?:(?:(?:"([^"]+)")|(?:'([^']+)')|(?:\(([^\(\)]+)\)))\s*(.+)?)?/
  #%r{
  # ^[ ]{0,3}\[([^\[\]]+)\]:    # id = $1
  #   [ ]*
  # <?([^>\s]+)>?       # url = $2
  #   [ ]*
  # (?: # Titles are delimited by "quotes" or (parens).
  #   (?:(?:"([^"]+)")|(?:'([^']+)')|(?:\(([^\(\)]+)\))) # title = $3, $4, or $5
  #   \s*(.+)? # stuff = $6
  # )?  # title is optional
  #}x

  IncompleteLink = /^[ ]{0,3}\[([^\[\]]+?)\]:\s*$/

  HeaderWithId = /^(.*?)\{\#([\w-]+)\}\s*$/

  HeaderWithAttributes = /^(.*?)\{(.*?)\}\s*$/


  # if contains a pipe, it could be a table header
  MightBeTableHeader = /\|/
  # -------------:
  Sep = /\s*(\:)?\s*-+\s*(\:)?\s*/
  # | -------------:| ------------------------------ |
  TableSeparator = /^(\|?#{Sep}\|?)+?\s*$/
  # + -------------:+ ------------------------------ +
  MultilineTableSeparator = /^(\+?#{Sep}\+?)+?\s*$/
  # + ------------- + ------------------------------ +
  MultilineTableSeparatorNoAlignment = /^\s*\+?(\s*-+\s*\+?)+?\s*$/

  EMailAddress = /<([^:@>]+?@[^:@>]+?)>/
end
