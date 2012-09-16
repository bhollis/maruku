($LOAD_PATH << File.expand_path("../lib", __FILE__)).uniq!
require "maruku/version"

Gem::Specification.new do |s|
  s.name = 'maruku'
  s.version = MaRuKu::Version
  s.summary = "Maruku is a Markdown-superset interpreter written in Ruby."
  s.description = %{Maruku is a Markdown interpreter in Ruby.
	It features native export to HTML and PDF (via Latex). The
	output is really beautiful!
	}
  s.license = 'GPL-2'
  s.authors = ["Andrea Censi", "Nathan Weizenbaum"]
  s.email = "ben@benhollis.net"
  s.homepage = "http://github.com/bhollis/maruku"

  s.files = Dir['lib/**/*.rb'] + Dir['lib/*.rb'] + 
        Dir['docs/*.md'] +      Dir['docs/*.html'] +
        Dir['tests/**/*.md'] +
          Dir['bin/*'] + Dir['*.sh'] + ['Rakefile']

  s.bindir = 'bin'
  s.executables = ['maruku','marutex']

  s.require_path = 'lib'
  s.autorequire = 'maruku'

  s.add_dependency('syntax', '>= 1.0.0')

  s.add_development_dependency('syntax', '~> 1.0.0')
  s.add_development_dependency('rake', '~> 0.9.2')
end

