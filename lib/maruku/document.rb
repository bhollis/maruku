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
  # This represents the whole document and holds global data.
  class MDDocument # < MDElement
    # @return [{String => {:url => String, :title => String}}]
    attr_accessor :refs

    # @return [{String => MDElement}]
    attr_accessor :footnotes

    # @return [{String => String}]
    attr_accessor :abbreviations

    # Attribute definition lists.
    #
    # @return [{String => AttributeList}]
    attr_accessor :ald

    # The order in which footnotes are used. Contains the id.
    #
    # @return [Array<String>]
    attr_accessor :footnotes_order

    # @return [{String => {String => MDElement}}]
    attr_accessor :refid2ref

    # A counter for generating unique IDs [Integer]
    attr_accessor :id_counter

    def initialize(s=nil)
      super(:document)

      self.doc = self
      self.refs = {}
      self.footnotes = {}
      self.footnotes_order = []
      self.abbreviations = {}
      self.ald = {}
      self.id_counter = 0

      parse_doc(s) if s
    end
  end
end
