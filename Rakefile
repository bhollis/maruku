require 'rake'
require 'rdoc/task'

RDoc::Task.new do |rdoc|
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

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.pattern = FileList['spec/**/*_spec.rb']
end



