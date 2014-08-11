#!/usr/bin/env bundle

source 'https://rubygems.org'

group :default do
  group :middleman do
    gem 'middleman',             '~> 3.3.4'
    gem 'middleman-wundertuete', github: 'bitaculous/middleman-wundertuete'
  end

  group :assets do
    gem 'assetify', github: 'bitaculous/assetify'

    group :stylesheets do
      gem 'compass', '~> 1.0.0.alpha.21'
      # gem 'compass', github: 'compass/compass', branch: 'master'
    end
  end

  group :misc do
    gem 'andand', '~> 1.3.3'
  end
end