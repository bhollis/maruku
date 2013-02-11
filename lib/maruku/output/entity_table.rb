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
require 'singleton'

module MaRuKu::Out
  Entity = Struct.new(:html_num, :html_entity, :latex_string, :latex_package)

  class EntityTable
    # Sad but true
    include Singleton

    def initialize
      @entity_table = {}

      xml = File.read(File.join(File.dirname(__FILE__), '..', '..', '..', 'data', 'entities.xml'))
      doc = Nokogiri::XML::Document.parse(xml)
      doc.xpath("//char").each do |c|
        num = c['num'].to_i
        name = c['name']
        convert = c['convertTo']
        package = c['package']

        e = Entity.new(num, name, convert, package)
        @entity_table[name] = e
        @entity_table[num] = e
      end
    end

    def entity(name)
      @entity_table[name]
    end
  end
end

