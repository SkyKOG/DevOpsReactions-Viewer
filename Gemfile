source 'http://rubygems.org'

gem 'rails', '3.2.16'
gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'

  #Themes
  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem "twitter-bootstrap-rails"
end

gem 'jquery-rails'
gem "nokogiri", '1.6.1', :require => "nokogiri"


#Architecture
gem 'settingslogic'


#Database & ActiveRecord
gem 'schema_plus'             #ForeignKeys, be careful when creating relationships https://github.com/lomba/schema_plus
gem 'validates_lengths_from_database'
gem 'validates_timeliness'
gem 'validate_as_email'
gem 'validates_existence', '>= 0.4'  #validates existence of foreign key

#Forms
#FIXME: Client Side validations not working for simple_form
gem 'simple_form'


#Background
gem 'sidekiq'
gem 'sidekiq-failures'
gem 'redis'
gem 'sinatra', require: false

#Caching
gem 'dalli'

#Pagination
gem 'will_paginate'

#Files
gem 'paperclip'

#Code & Development
gem 'rack-protection'

#Utils
gem 'foreman'

#Development
group :development do
  #Utils
  gem 'bullet'
  gem 'paint'
  gem 'formatador'
  gem 'rails-erd'       #To generate ER Diagram of the Models
  gem 'quiet_assets' #Removes Asset Pipeline Request
  gem 'annotate'       #Annotating Models, Routes
  gem 'guard-annotate'

  #Code Standards
  gem 'rails_best_practices'
  gem 'rubocop'
  gem 'guard-rails_best_practices'
  gem 'guard-rubocop'


  #Security
  gem 'brakeman', require: false

  #gem 'zeus' Add this as a main gem, improves performance
  #gem 'unicorn'
  gem 'better_errors' #Only in Dev environment
  gem 'binding_of_caller' #better_errors - Used to decode values
  gem 'meta_request' #better_errors/rails panel

  #Automating with Guard
  gem 'guard'
  gem 'libnotify' if /linux/ =~ RUBY_PLATFORM
  gem 'rb-inotify', require: false
  gem 'guard-annotate'
  gem 'guard-rails_best_practices'
  gem 'yard', require: false
end

#Testing
group :test, :development do
  gem 'cucumber-rails', require: false
  gem 'rspec-rails'
  #gem 'rspec-gc-control'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'guard'
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'populator'
  gem 'random_data'
  gem 'highline', '~> 1.6.9'
  gem 'parallel_tests'
  gem 'zeus-parallel_tests'
  gem 'email_spec'
  gem 'action_mailer_cache_delivery'
end

gem 'faker'

group :test do
  gem 'capybara-screenshot'
  gem 'zeus'
  gem 'accept_values_for' #Rspec Macro to accept values in array https://github.com/bogdan/accept_values_for
  gem 'simplecov'
  gem 'syntax'
end

group :production do
  #For heroku production
  gem 'unicorn'
  #gem 'newrelic_rpm'
end

gem 'rails_12factor', group: :production

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
