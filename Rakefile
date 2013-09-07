require 'rubygems'
require 'bundler'

# Turn on verbose warnings for tests
ENV['RUBYOPT'] = '-w'

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

CLEAN.replace %w(pkg doc .yardoc)

Bundler::GemHelper.install_tasks

desc "Run RSpec"
RSpec::Core::RakeTask.new(:core_spec) do |t|
  t.verbose = false
  t.rspec_opts = '--color -f nested --tty'
end

task :nokogiri_spec do
  ENV['HTML_PARSER'] = 'nokogiri'
  Rake::Task[:core_spec].reenable
  Rake::Task[:core_spec].invoke
end

task :rexml_spec do
  ENV['HTML_PARSER'] = 'rexml'
  Rake::Task[:core_spec].reenable
  Rake::Task[:core_spec].invoke
end

task :spec => [:nokogiri_spec, :rexml_spec]

task :default => :spec
task :test => :spec

YARD::Rake::YardocTask.new do |t|
  t.files = FileList["lib/maruku.rb", "lib/maruku/*.rb", "lib/maruku/ext/*.rb",
    "lib/maruku/ext/math/*.rb"]
end
