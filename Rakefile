require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake/clean'
require 'rake/rdoctask'

task :default => :spec
CLEAN.replace %w(pkg doc)

Bundler::GemHelper.install_tasks

desc "Run all tests"
task :test => [:markdown_span_tests, :markdown_block_tests]

desc "Run block-level tests"
task :markdown_block_tests do
  tests = Dir['tests/unittest/**/*.md'].join(' ')
  puts "Executing tests #{tests}"
  ok = system "ruby -Ilib bin/marutest #{tests}"
  raise "Failed block unittest" if not ok
end

desc "Run span-level tests"
task :markdown_span_tests do
  ok = system( "ruby -Ilib lib/maruku/tests/new_parser.rb v b")
  raise "Failed span unittest" if not ok
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
