Gem::Specification.new do |s|
  s.name = 'maruku'
  s.version = '0.6.0'
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

  s.add_dependency('syntax', '>= 1.0.0')

  s.author = "Andrea Censi"
  s.email = "andrea@rubyforge.org"
  s.homepage = "http://maruku.rubyforge.org"
end

#  s.has_rdoc = true
#  s.extra_rdoc_files = Dir['[A-Z]*']
#  s.rdoc_options << '--title' <<  'Builder -- Easy XML Building'

