# encoding: utf-8

$:.push File.expand_path("../lib", __FILE__)  
require "maruku/version"

Gem::Specification.new do |s|
  s.name = 'maruku'
  s.version = MaRuKu::Version
  s.summary = "Maruku is a Markdown-superset interpreter written in Ruby"
  s.description = <<-DESCRIPTION
    Maruku is a Markdown interpreter in Ruby.
    It features native export to HTML and PDF (via Latex).
    The output is really beautiful!
  DESCRIPTION
  s.email = 'andrea@rubyforge.org'
  s.homepage = 'http://maruku.rubyforge.org'
  s.author = "Andrea Censi"
  s.executables = ['maruku', 'marutex']
  s.files = Dir.glob("{lib,spec}/**/*.rb") + 
    Dir.glob("{docs,spec}/**/*.md") + 
    Dir.glob("{data,bin}/*") + 
    ["LICENSE", "AUTHORS", "Rakefile", "Gemfile", "README.md"]
  s.add_dependency('syntax', '>= 1.0.0')
  s.add_dependency('nokogiri', '~> 1.5')
  # development dependencies
  s.add_development_dependency("itextomml", '~> 1.4.6')
  s.add_development_dependency('rake', '~> 0.9.2')
  s.add_development_dependency('rspec', '~> 2.6.0')
  s.add_development_dependency('yard', '~> 0.7.2')
  
  s.has_rdoc = true
  s.require_path = "lib"
end

