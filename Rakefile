require 'rubygems'
Gem::manage_gems
require 'rake/gempackagetask'

require 'maruku_gem'

task :default => [:package]

Rake::GemPackageTask.new($spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end