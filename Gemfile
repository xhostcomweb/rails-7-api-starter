source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.2', '>= 7.0.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Thin as the app server
gem 'thin'
# Bundle Audit
gem 'bundle-audit'

# Manage Procfile-based applications
gem 'foreman'

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Rack Middleware for handling Cross-Origin Resource Sharing (CORS), which makes cross-origin AJAX possible
gem 'rack-cors'

# Rack middleware for blocking & throttling
gem 'rack-attack'

# A Ruby static code analyzer
gem 'rubocop', '~> 0.70.0', require: false
gem 'rubocop-rails', require: false

# Bootsnap is a library that plugs into Ruby, with optional support for ActiveSupport and YAML, to optimize and cache expensive computations.
gem 'bootsnap', require: false

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Authorization
gem 'devise'


gem 'rexml', '~> 3.2', '>= 3.2.5'
# Ruby integrations for Elasticsearch
# gem 'elasticsearch'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', platform: :mri

  # Testing framework
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  # Access an IRB console on exception pages
  # or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'

  gem 'binding_of_caller'

  # Rails >= 3 pry initializer
  gem 'pry-rails'

  # Code smell detector for Ruby
  gem 'reek'

  # A code metric tool for rails projects
  gem 'rails_best_practices'

  # A static analysis security vulnerability scanner for Ruby on Rails applications
  gem 'brakeman', require: false

  # Annotate Rails classes with schema and routes info
  gem 'annotate'
end

group :test do
  # Provides RSpec with additional matchers.
  gem 'shoulda-matchers', '~> 3.1'

  # A library for generating fake data. We'll use this to generate test data.
  gem 'faker'

  # You guessed it! It literally cleans our test database to ensure a clean state in each test suite.
  gem 'database_cleaner'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'mini_racer', platforms: :ruby

# A Rake task that helps you find dead routes and unused actions in your Rails 3+ app.
gem 'traceroute'
