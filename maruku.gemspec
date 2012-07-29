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
  s.files = Dir['lib/**/*.rb'] + Dir['lib/*.rb'] + 
	Dir['docs/*.md'] +	Dir['docs/*.html'] +
	Dir['spec/**/*.rb'] + Dir['spec/**/*.md'] +
          Dir['bin/*'] + ['Rakefile']

  s.bindir = 'bin'
  s.executables = ['maruku','marutex']

  s.require_path = 'lib'

  s.add_dependency('syntax', '~> 1.0.0')

  s.add_development_dependency('rspec', '~> 2.0')

  s.authors = ["Andrea Censi", "Nathan Weizenbaum"]
  s.email = "andrea@rubyforge.org"
  s.homepage = "http://maruku.rubyforge.org"
end

