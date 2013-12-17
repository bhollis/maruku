require 'nokogiri'
require 'singleton'

module MaRuKu::Out
  Entity = Struct.new(:html_num, :html_entity, :latex_string, :latex_package)

  class EntityTable
    # Sad but true
    include Singleton

    def initialize
      @entity_table = {}

      xml = File.new(File.join(File.dirname(__FILE__), '..', '..', '..', 'data', 'entities.xml'))
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

