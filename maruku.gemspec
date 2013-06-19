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

  # Sign the gem - http://docs.rubygems.org/read/chapter/21
  s.cert_chain  = ['certs/bhollis.pem']
  s.signing_key = File.expand_path("~/.gem/private_key.pem") if $0 =~ /gem\z/

  s.require_path = 'lib'

  s.required_ruby_version = '>= 1.8.7'

  s.add_dependency('nokogiri', '~> 1.5', '>= 1.5.6')

  s.add_development_dependency('syntax', '~> 1.0.0')
  s.add_development_dependency('rake', '~> 0.9.2')
  s.add_development_dependency('rspec', '~> 2.12.0')
  s.add_development_dependency('yard', '~> 0.7.2')
  s.add_development_dependency('nokogiri-diff', '~> 0.1.2')
end

