#!/usr/bin/env bundle

source 'https://rubygems.org'

group :default do
  group :middleman do
    gem 'middleman',             '~> 3.3.5'
    gem 'middleman-wundertuete', github: 'bitaculous/middleman-wundertuete'
  end

  group :assets do
    gem 'assetify', github: 'bitaculous/assetify'

    group :stylesheets do
      gem 'compass', '~> 1.0.1'
      # gem 'compass', github: 'compass/compass', branch: 'stable'
    end
  end

  group :misc do
    gem 'andand', '~> 1.3.3'
  end
end