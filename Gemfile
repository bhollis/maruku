source "https://rubygems.org"

# dependencies are specified in maruku.gemspec

gemspec

# itextomml won't build for jRuby, but we should test with it otherwise
if RUBY_PLATFORM != 'java'
  gem "itextomml", '~> 1.5.0'
end
