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

module MaRuKu
  # Rather than having a separate class for every possible element,
  # Maruku has a single {MDElement} class
  # that represents eveything in the document (paragraphs, headers, etc).
  # The type of each element is available via \{#node\_type}.
  class MDElement
    # The type of this node (e.g. `:quote`, `:image`, `:abbr`).
    # See {Helpers} for a list of possible values.
    #
    # @return [Symbol]
    attr_accessor :node_type

    # The child nodes of this element.
    #
    # @return [Array<String or MDElement>]
    attr_accessor :children

    # An attribute list. May not be nil.
    #
    # @return [AttributeList]
    attr_accessor :al

    # The processed attributes.
    #
    # For the {Maruku document root},
    # this contains properties listed
    # at the beginning of the document.
    # The properties will be downcased and any spaces
    # will be converted to underscores.
    # For example, if you write in the source document:
    #
    #     !!!text
    #     Title: test document
    #     My property: value
    #
    #     content content
    #
    # Then \{#attributes} will return:
    #
    #     {:title => "test document", :my_property => "value"}
    #
    # @return [{Symbol => String}]
    attr_accessor :attributes

    # The root element of the document
    # to which this element belongs.
    #
    # @return [Maruku]
    attr_accessor :doc

    def initialize(node_type = :unset, children = [], meta = {}, al = nil)
      self.children = children
      self.node_type = node_type
      self.attributes = {}

      # Define a new accessor on the singleton class for this instance
      # for each metadata key
      meta.each do |symbol, value|
        class << self
          self
        end.send(:attr_accessor, symbol)

        self.send("#{symbol}=", value)
      end

      self.al = al || AttributeList.new
      self.meta_priv = meta
    end

    # @private
    attr_accessor :meta_priv

    def ==(o)
      o.is_a?(MDElement) &&
        self.node_type == o.node_type &&
        self.meta_priv == o.meta_priv &&
        self.children == o.children
    end

    # Iterates through each {MDElement} child node of this element.
    # This includes deeply-nested child nodes.
    # If `e_node_type` is specified, only yields nodes of that type.
    def each_element(e_node_type=nil, &block)
      @children.each do |c|
        next unless c.is_a? MDElement
        yield c if e_node_type.nil? || c.node_type == e_node_type
        c.each_element(e_node_type, &block)
      end
    end

    # Iterates through each String child node of this element,
    # replacing it with the result of the block.
    # This includes deeply-nested child nodes.
    #
    # This destructively modifies this node and its children.
    #
    # @todo Make this non-destructive
    def replace_each_string(&block)
      @children.map! do |c|
        next yield c unless c.is_a?(MDElement)
        c.replace_each_string(&block)
        c
      end.flatten!
    end
  end
end
