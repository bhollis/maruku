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
  #
  # You can tell what it is by the variable `node_type`.
  #
  # In the instance-variable `children` there are the children. These
  # can be of class 1) String or 2) MDElement.
  #
  # The @doc variable points to the document to which the MDElement
  # belongs (which is an instance of Maruku, subclass of MDElement).
  #
  # Attributes are contained in the hash `attributes`.
  # Keys are symbols (downcased, with spaces substituted by underscores)
  #
  # For example, if you write in the source document.
  #
  #     Title: test document
  #     My property: value
  #
  #     content content
  #
  # You can access `value` by writing:
  #
  #     @doc.attributes[:my_property] # => 'value'
  #
  # from whichever MDElement in the hierarchy.
  #
  class MDElement
    # See helpers.rb for the list of allowed #node_type values
    attr_accessor :node_type

    # Children are either Strings or MDElement
    attr_accessor :children

    # An attribute list, may not be nil
    attr_accessor :al

    # These are the processed attributes
    attr_accessor :attributes

    # Reference of the document (which is of class Maruku)
    attr_accessor :doc

    def initialize(node_type=:unset, children=[], meta={},
        al=MaRuKu::AttributeList.new )
      super();
      self.children = children
      self.node_type = node_type

      @attributes = {}

      meta.each do |symbol, value|
        self.instance_eval "
          def #{symbol}; @#{symbol}; end
          def #{symbol}=(val); @#{symbol}=val; end"
        self.send "#{symbol}=", value
      end

      self.al = al || AttributeList.new

      self.meta_priv = meta
    end

    attr_accessor :meta_priv

    def ==(o)
      ok = o.kind_of?(MDElement) &&
      (self.node_type == o.node_type) &&
      (self.meta_priv == o.meta_priv) &&
      (self.children == o.children)

      if not ok
  #			puts "This:\n"+self.inspect+"\nis different from\n"+o.inspect+"\n\n"
      end
      ok
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
      @doc       = self

      self.refs = {}
      self.footnotes = {}
      self.footnotes_order = []
      self.abbreviations = {}
      self.ald = {}
      self.latex_required_packages = []

      parse_doc(s) if s
    end
  end


end # MaRuKu
