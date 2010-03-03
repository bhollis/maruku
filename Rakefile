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

begin
  require 'yard'
  YARD::Rake::YardocTask.new do |t|
    files = %w[attributes errors helpers maruku string_utils structures
               structures_inspect version]
    t.files = FileList["lib/maruku.rb", "lib/maruku/{#{files.join(',')}}.rb"]
  end
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end
