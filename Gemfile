source "https://rubygems.org"

# dependencies are specified in maruku.gemspec

gemspec

# itextomml won't build for jRuby, but we should test with it otherwise
if RUBY_PLATFORM != 'java'
  gem "itextomml", '~> 1.4.6'
end

# Development tools
gem 'rake', '~> 0.9.2'
gem 'rspec', '~> 2.12.0'
gem 'yard', '~> 0.7.2'
gem 'nokogiri-diff', '~> 0.2.0'
gem 'simplecov', '~> 0.7.1'
gem 'coveralls', :require => false
