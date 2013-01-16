# encoding: UTF-8
Encoding.default_external=('UTF-8') if ''.respond_to?(:force_encoding)
require File.dirname(__FILE__) + "/spec_helper"

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
        
        # Canonicalize the HTML to avoid problems with differences in attribute order
        # or the representation of HTML entities
        #Nokogiri::XML(res).canonicalize.should == Nokogiri::XML(@expected[:to_html]).canonicalize
        res.should == @expected[:to_html]
      end

      it "should have the expected to_latex output" do
        res = @doc.to_latex.strip
        res.should == @expected[:to_latex]
      end
    end
  end
end
