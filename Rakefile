require 'rake'
require 'rake/clean'
require 'rdoc/task'
require 'rspec/core'
require 'rspec/core/rake_task'
require 'bundler'

task :default => :spec

CLEAN.replace %w(pkg doc)

RDoc::Task.new do |rdoc|
  files = [
           'lib/**/*.rb',
           'rdoc/*.rdoc'
  ]
  rdoc.rdoc_files.add(files)
  rdoc.main = "rdoc/main.rdoc" # page to start on
  rdoc.title = "Maruku Documentation"
  rdoc.template = "jamis.rb"
  rdoc.rdoc_dir = 'doc' # rdoc output folder
  rdoc.options << '--line-numbers' << '--inline-source'
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

Bundler::GemHelper.install_tasks
