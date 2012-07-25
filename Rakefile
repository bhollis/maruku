require 'rubygems'
require 'rake'
require 'rubygems/package_task'
require 'rake/rdoctask'

task :default => [:package]

spec = Gem::Specification.new do |s|
  s.name = 'maruku'
  s.version = '0.6.0'
  s.summary = "Maruku is a Markdown-superset interpreter written in Ruby."
  s.description = %{Maruku is a Markdown interpreter in Ruby.
        It features native export to HTML and PDF (via Latex). The
        output is really beautiful!
        }
  s.files = Dir['lib/**/*.rb']  + Dir['lib/*.rb'] +
            Dir['docs/*.md']    + Dir['docs/*.html'] +
            Dir['spec/**/*.rb'] + Dir['spec/**/*.md'] +
            Dir['bin/*']        + ['Rakefile', 'maruku_gem.rb']

  s.bindir = 'bin'
  s.executables = ['maruku','marutex']

  s.require_path = 'lib'
  s.autorequire = 'maruku'

  s.add_dependency('syntax', '>= 1.0.0')

  s.author = "Andrea Censi"
  s.email = "andrea@rubyforge.org"
  s.homepage = "http://maruku.rubyforge.org"
end

Gem::PackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end


Rake::RDocTask.new do |rdoc|
  files = [#'README', 'LICENSE', 'COPYING',
           'lib/**/*.rb',
           'rdoc/*.rdoc'#, 'test/*.rb'
  ]
  rdoc.rdoc_files.add(files)
  rdoc.main = "rdoc/main.rdoc" # page to start on
  rdoc.title = "Maruku Documentation"
  rdoc.template = "jamis.rb"
  rdoc.rdoc_dir = 'doc' # rdoc output folder
  rdoc.options << '--line-numbers' << '--inline-source'
end

#PKG_NAME = 'maruku'
#PKG_FILE_NAME = "#{PKG_NAME}-#{MaRuKu::Version}"
#RUBY_FORGE_PROJECT = PKG_NAME
#RUBY_FORGE_USER = 'andrea'

#RELEASE_NAME  = MaRuKu::Version
#RUBY_FORGE_GROUPID = '2795'
#RUBY_FORGE_PACKAGEID = '3292'

#desc "Publish the release files to RubyForge."
#task :release => [:gem, :package] do
	#system("rubyforge login --username #{RUBY_FORGE_USER}")

	#gem = "pkg/#{PKG_FILE_NAME}.gem"
	## -n notes/#{Maruku::Version}.txt
	#cmd = "rubyforge  add_release %s %s \"%s\" %s" %
		#[RUBY_FORGE_GROUPID, RUBY_FORGE_PACKAGEID, RELEASE_NAME, gem]
	
	#puts cmd
	#system(cmd)
	
	#files = ["gem", "tgz", "zip"].map { |ext| "pkg/#{PKG_FILE_NAME}.#{ext}" }
	#files.each do |file|
##		system("rubyforge add_file %s %s %s %s" %
##		[RUBY_FORGE_GROUPID, RUBY_FORGE_PACKAGEID, RELEASE_NAME, file])
  #end
#end

#begin
  #require 'spec/rake/spectask'

  #Spec::Rake::SpecTask.new
#rescue LoadError => e
#end




