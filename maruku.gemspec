require File.expand_path("../lib/maruku/version", __FILE__)

Gem::Specification.new do |s|
  s.name = 'maruku'
  s.version = MaRuKu::Version
  s.summary = "Maruku is a Markdown-superset interpreter written in Ruby."
  s.description = "Maruku is a Markdown interpreter in Ruby.
  It features native export to HTML and PDF (via Latex). The
  output is really beautiful!"
  s.license = 'MIT'
  s.authors = ["Andrea Censi", "Nathan Weizenbaum", "Ben Hollis"]
  s.email = "ben@benhollis.net"
  s.homepage = "http://github.com/bhollis/maruku"

  s.files = Dir['lib/**/*.rb',
                'docs/*.{md,html}',
                'spec/**/*.{rb,md}',
                'data/*',
                'bin/*',
                'MIT-LICENSE.txt']

  s.bindir = 'bin'
  s.executables = ['maruku','marutex']

  s.require_path = 'lib'

  s.required_ruby_version = '>= 1.8.7'
end

