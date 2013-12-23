require File.dirname(__FILE__) + '/spec_helper'
require 'rspec'
require 'nokogiri'
require 'maruku'

describe "Maruku" do
  describe "parsing" do
    describe "Markdown Embedded in HTML" do
      it "is smart enough to know not to wrap it with a <p>" do
        parsed_html = Maruku.new(markdown_embedded_in_html).to_html
        nokogiri_doc = Nokogiri::HTML(parsed_html)
        expect(nokogiri_doc.css("p").count).to eq(0)
      end
      
      it "parses markdown inside the HTML tags" do
        parsed_html = Maruku.new(markdown_embedded_in_html).to_html
        nokogiri_doc = Nokogiri::HTML(parsed_html)
        expect(nokogiri_doc.css("h2").count).to eq(1)
      end
    end
  end
end

def markdown_embedded_in_html
  return <<-EOMD
<section markdown="block">
## Header
</section>
  EOMD
end