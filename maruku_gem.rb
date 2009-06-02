require 'lib/maruku/version'

MARUKU_GEMSPEC = Gem::Specification.new do |s|
  s.rubyforge_project = 'maruku'
  s.name = 'maruku'
  s.summary = "Maruku is a Markdown-superset interpreter written in Ruby."
  s.version = MaRuKu::Version
  s.author = "Andrea Censi"
  s.email = "andrea@rubyforge.org"
  s.homepage = "http://maruku.rubyforge.org"
  s.description = <<-DESCRIPTION
    Maruku is a Markdown interpreter in Ruby.
    It features native export to HTML and PDF (via Latex).
    The output is really beautiful!
  DESCRIPTION

  s.executables = ['maruku', 'marutex']
  s.files = FileList['lib/**/*', 'data/*', 'docs/**/*.md', 'bin/*',
    'spec/**/*.rb', 'spec/**/*.md'] +
    FileList.new('*') {|list| list.exclude(/(^|[^.a-z])[a-z]+/) }
  s.has_rdoc = true
  s.extra_rdoc_files = ['AUTHORS', 'LICENSE']
  s.rdoc_options += %w[
    --title MaRuKu
    --main README.rdoc
    --line-numbers
    --inline-source
  ]

  s.add_dependency('syntax', '>= 1.0.0')
end
