#!/usr/bin/env bundle

source 'https://rubygems.org'

group :default do
  # === Middleman ===

  gem 'middleman',             '~> 3.3.6'
  gem 'middleman-wundertuete', github: 'bitaculous/middleman-wundertuete'

  # === Assets ===

  gem 'assetify', github: 'bitaculous/assetify'

  gem 'therubyracer', '~> 0.12.1', require: RUBY_PLATFORM.include?('linux') && 'v8'

  # === Misc ===

  gem 'andand', '~> 1.3.3'
end