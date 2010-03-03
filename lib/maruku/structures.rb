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

module MaRuKu
  # I did not want to have a class for each possible element.
  # Instead I opted to have only the class "MDElement"
  # that represents eveything in the document (paragraphs, headers, etc).
  # The node type is available via the variable +node_type+.
  #
  # The instance variable <tt>@children</tt> contains the child nodes,
  # which can be of class String or MDElement.
  #
  # The <tt>@doc</tt> variable points to the document to which the MDElement
  # belongs (which is an instance of Maruku, subclass of MDElement).
  #
  # Attributes are contained in the hash +attributes+.
  # Keys are symbols (downcased, with spaces substituted by underscores).
  #
  # For example, if you write in the source document:
  #
  #     Title: test document
  #     My property: value
  #
  #     content content
  #
  # You can access +value+ by writing:
  #
  #     @doc.attributes[:my_property] #=> 'value'
  #
  # within any MDElement in the hierarchy.
  class MDElement
    # See helpers.rb for the list of allowed <tt>#node_type</tt> values
    attr_accessor :node_type

    # Children are either Strings or MDElements.
    attr_accessor :children

    # An attribute list, may not be nil.
    attr_accessor :al

    # The processed attributes.
    attr_accessor :attributes

    # The document root (which is of class Maruku).
    attr_accessor :doc

    def initialize(node_type = :unset, children = [], meta = {}, al = nil)
      self.children = children
      self.node_type = node_type
      self.attributes = {}

      meta.each do |symbol, value|
        self.instance_eval <<RUBY
          def #{symbol}; @#{symbol}; end
          def #{symbol}=(val); @#{symbol} = val; end
RUBY
        self.send "#{symbol}=", value
      end

      self.al = al || AttributeList.new
      self.meta_priv = meta
    end

    # private
    attr_accessor :meta_priv

    def ==(o)
      o.is_a?(MDElement) &&
        self.node_type == o.node_type &&
        self.meta_priv == o.meta_priv &&
        self.children == o.children
    end
  end

  # This represents the whole document and holds global data.
  class MDDocument
    attr_accessor :refs
    attr_accessor :footnotes

    # This is an hash. The key might be nil.
    attr_accessor :abbreviations

    # Attribute lists definition
    attr_accessor :ald

    # The order in which footnotes are used. Contains the id.
    attr_accessor :footnotes_order

    attr_accessor :latex_required_packages

    attr_accessor :refid2ref

    def initialize(s=nil)
      super(:document)

      self.doc = self
      self.refs = {}
      self.footnotes = {}
      self.footnotes_order = []
      self.abbreviations = {}
      self.ald = {}
      self.latex_required_packages = []

      parse_doc(s) if s
    end
  end
end
