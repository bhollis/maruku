# encoding: UTF-8
Encoding.default_external=('UTF-8') if ''.respond_to?(:force_encoding)
require File.dirname(__FILE__) + "/spec_helper"

require 'nokogiri/diff'

# Fix nokogiri-diff to understand comments (until they release a fixed version):
class Nokogiri::XML::Node
  def tdiff_equal(node)
    if (self.class == node.class)
      case node
      when Nokogiri::XML::Attr
        (self.name == node.name && self.value == node.value)
      when Nokogiri::XML::Element, Nokogiri::XML::DTD
        self.name == node.name
      when Nokogiri::XML::Text, Nokogiri::XML::Comment
        self.text == node.text
      else
        false
      end
    else
      false
    end
  end
end

# :to_md and :to_s tests are disabled for now
METHODS = [:to_html, :to_latex]

describe "A Maruku document" do
  before(:all) do
    @old_stderr = $stderr
    $stderr = StringIO.new
  end

  after(:all) do
    $stderr = @old_stderr
  end

  Dir[File.dirname(__FILE__) + "/block_docs/**/*.md"].each do |md|
    describe " for the #{md} file" do
      input = File.read(md).split(/\n\*{3}[^*\n]+\*{3}\n/m)
      input = ["Write a comment here", "{}", input.first] if input.size == 1
      comment = input.shift.strip
      params = eval(input.shift)
      markdown = input.shift
      ast = input.shift

      before(:each) do
        $already_warned_itex2mml = false
        @doc = Maruku.new(markdown, params)
        @expected = METHODS.zip(input).inject({}) {|h, (k, v)| h[k] = v ? v.strip : '' ; h}
        pending "#{comment} - #{md}" if comment.start_with?("PENDING")
        pending "#{comment} - #{md}" if comment.start_with?("JRUBY PENDING") && RUBY_PLATFORM == 'java'
      end

      it "should read in the output of #inspect as the same document" do
        Maruku.new.instance_eval("#coding: utf-8\n#{@doc.inspect}").should == @doc
      end

      it "should produce the given AST" do
        @doc.should == Maruku.new.instance_eval(ast)
      end

      it "should have the expected to_html output" do
        res = @doc.to_html.strip
        pending "install itex2mml to run these tests" if $already_warned_itex2mml
        
        resdoc = Nokogiri::XML(res)
        expdoc = Nokogiri::XML(@expected[:to_html])

        diff = ""
        changed = false
        resdoc.diff(expdoc) do |change, node|
          diff << "#{change} #{node.inspect}\n"
          changed = true unless change == ' '
        end

        fail diff if changed
      end

      it "should have the expected to_latex output" do
        res = @doc.to_latex.strip
        res.should == @expected[:to_latex]
      end
    end
  end
end
