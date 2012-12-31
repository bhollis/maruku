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
require 'rspec/core/rake_task'
require 'yard'

task :default => :spec
CLEAN.replace %w(pkg doc .yardoc)

Bundler::GemHelper.install_tasks

desc "Run RSpec"
RSpec::Core::RakeTask.new do |t|
  t.verbose = false
  t.rspec_opts = '--color -f nested'
end

task :default => :spec

YARD::Rake::YardocTask.new do |t|
  t.files = FileList["lib/maruku.rb", "lib/maruku/*.rb", "lib/maruku/ext/*.rb",
    "lib/maruku/ext/math/*.rb"]
end
