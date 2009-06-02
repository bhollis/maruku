require 'rubygems'
Gem::manage_gems
require 'rake/gempackagetask'

require 'maruku_gem'

task :default => [:package]

Rake::GemPackageTask.new($spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end

PKG_NAME = 'maruku'
PKG_FILE_NAME = "#{PKG_NAME}-#{MaRuKu::Version}"
RUBY_FORGE_PROJECT = PKG_NAME
RUBY_FORGE_USER = 'andrea'

RELEASE_NAME  = MaRuKu::Version
RUBY_FORGE_GROUPID = '2795'
RUBY_FORGE_PACKAGEID = '3292'

desc "Publish the release files to RubyForge."
task :release => [:gem, :package] do
	system("rubyforge login --username #{RUBY_FORGE_USER}")

	gem = "pkg/#{PKG_FILE_NAME}.gem"
	# -n notes/#{Maruku::Version}.txt
	cmd = "rubyforge  add_release %s %s \"%s\" %s" %
		[RUBY_FORGE_GROUPID, RUBY_FORGE_PACKAGEID, RELEASE_NAME, gem]
	
	puts cmd
	system(cmd)
	
	files = ["gem", "tgz", "zip"].map { |ext| "pkg/#{PKG_FILE_NAME}.#{ext}" }
	files.each do |file|
#		system("rubyforge add_file %s %s %s %s" %
#		[RUBY_FORGE_GROUPID, RUBY_FORGE_PACKAGEID, RELEASE_NAME, file])
  end
end

begin
  require 'spec/rake/spectask'

  Spec::Rake::SpecTask.new
rescue LoadError => e
end

require 'rake/rdoctask'

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



