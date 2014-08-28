source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Bootstrap gems
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"

gem 'smarter_csv'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use haml by default
gem 'haml-rails'

# git is necessary until a new version incorporates the inet fix
gem 'rails_admin', git:'https://github.com/sferik/rails_admin'
gem "rails_admin_import"

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'


gem 'devise'
gem 'cancancan'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'pry'
  gem 'binding_of_caller'
  gem 'better_errors'

  gem 'growl'
  gem 'guard-ctags-bundler'
  gem 'guard-livereload', require: false
  gem 'guard-bundler', require: false

  gem 'rspec-rails'
  gem 'rspec'
  gem 'rspec-instafail'

  gem 'factory_girl_rails'

  gem 'spring'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'capybara'
end

group :production do
  # Heroku gems
  gem 'rails_12factor'
end

# Darwin group necessary for heroku
# http://www.johnplummer.com/rails/heroku-error-conditional-rbfsevent-gem.html
group :test, :darwin do
  gem 'rb-fsevent'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
#

ruby "2.1.2"
