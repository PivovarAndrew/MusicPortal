# frozen_string_literal: true
source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

# Beautiful JavaScript charts
gem 'chartkick', '~> 4.1', '>= 4.1.3'
# Wrapper for the google translate API
gem 'easy_translate', '~> 0.5.1'
# The simplest way to group temporal data
gem 'groupdate', '~> 6.0', '>= 6.0.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem "rails", "~> 6.1.4", ">= 6.1.4.1"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use Puma as the app server
gem "puma", "~> 5.0"
# Use SCSS for stylesheets
gem "sass-rails", ">= 6"
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem "webpacker", "~> 5.0"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem "bcrypt", "~> 3.1", ">= 3.1.16"

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Ajax scaffold generator is a rails generator for ajaxified scaffolds
gem 'ajax_scaffold_generator', '~> 3.1', '>= 3.1.11'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.9', '>= 1.9.3', require: false
# Sass-powered version of Bootstrap 3
gem "bootstrap-sass", "~> 3.4", ">= 3.4.1"
# Assets for bootstrap-select
gem 'bootstrap-select-rails', '~> 1.13', '>= 1.13.8'
# Provides a simple and extremely flexible way to upload files
gem 'carrierwave', '~> 2.2', '>= 2.2.2'
# Provides a simple helper to get an HTML select list of countries
gem "country_select", "~> 6.0"
# The CSV library provides a complete interface to CSV files and data
gem 'csv', '~> 3.2', '>= 3.2.2'
# Flexible authentication solution for Rails with Warden
gem "devise", "~> 4.8", ">= 4.8.1"
# Generates nicer default devise views styled with Bootstrap
gem 'devise-bootstrapped', '~> 0.1.1'
# A normaliser/beautifier for HTML
gem 'htmlbeautifier', '~> 1.4', '>= 1.4.1'
# This gem brings the power of the premailer gem to Rails
gem 'premailer-rails', '~> 1.11', '>= 1.11.1'
# Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick
gem 'mini_magick', '~> 4.11'
# Object oriented authorization for application
gem 'pundit', '~> 2.1', '>= 2.1.1'
# Integrates the Twitter Bootstrap pagination component with the will_paginate
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.2'
# Simple, efficient background processing for Ruby
gem 'sidekiq', '~> 6.3', '>= 6.3.1'
# Enables to set jobs to be run in specified time
gem 'sidekiq-cron', '~> 1.2'

group :development, :test do
  gem "annotate", "~> 3.1", ">= 3.1.1"
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", "~> 11.1", ">= 11.1.3", platforms: %i[mri mingw x64_mingw]
  gem "pry-byebug", "~> 3.9"
  gem "pry-rails", "~> 0.3.9"
  gem "rubocop", "~> 1.5.2", require: false
  gem "rubocop-rails", "~> 2.9.1", require: false
end

group :development do
  gem "listen", "~> 3.3"
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "web-console", ">= 4.1.0"
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem "rack-mini-profiler", "~> 2.0"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring", "~> 4.0"
  # Automatically generate an entity-relationship diagram (ERD) for Rails models
  gem 'rails-erd', '~> 1.6', '>= 1.6.1'
  # Model and controller UML class diagram generator
  gem 'railroady', '~> 1.6'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 3.26"
  gem "rubocop-rspec", "~> 2.2.0", require: false
  gem "selenium-webdriver", "~> 4.1"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers", "~> 5.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", "~> 1.2021", ">= 1.2021.5", platforms: %i[mingw mswin x64_mingw jruby]
