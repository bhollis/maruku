require 'rubygems'
require 'rake/gempackagetask'

require 'maruku_gem'

task :default => [:package]

Rake::GemPackageTask.new(MARUKU_GEMSPEC) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end

desc "Publish the release files to RubyForge."
task :release => [:package] do
  pkg = "pkg/maruku-#{MaRuKu::VERSION}"
  sh %{rubyforge login}
  %w[gem tgz zip].each do |ext|
    sh %{rubyforge add_#{ext == 'gem' ? 'release' : 'file'} maruku maruku
          #{MaRuKu::VERSION} #{pkg}.#{ext}}
  end
end

begin
  require 'spec/rake/spectask'

  Spec::Rake::SpecTask.new
rescue LoadError => e
end

require 'rake/rdoctask'

Rake::RDocTask.new do |rdoc|
  rdoc.title = "Maruku"
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include(*FileList['README.rdoc', 'LICENSE', 'AUTHORS', 'lib/**/*'].to_a)
  rdoc.main = "README.rdoc"
  rdoc.rdoc_dir = "doc"
end
