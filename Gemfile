source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails', '4.2.4'
gem 'pg'

gem 'bcrypt'
gem 'coffee-rails', '~> 4.1.0'
gem 'cancancan'
gem 'high_voltage'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'meta-tags-helpers'
gem 'sass-rails', '~> 5.0'
gem 'sidekiq'
gem 'sprockets-coffee-react', '~> 3.4.1'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

source 'https://rails-assets.org' do
  gem 'rails-assets-berniestrap'
  gem 'rails-assets-noty'
end

group :development, :test do
  gem 'byebug'
  gem 'dotenv-rails'
end

group :development do
  gem 'web-console', '~> 3.0'
  gem 'spring'
end

group :test do
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'parallel_tests'
  gem 'phantomjs', require: 'phantomjs/poltergeist'
  gem 'poltergeist'
  gem 'rack_session_access'
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'webmock'
end

group :production do
  gem 'newrelic_rpm'
  gem 'passenger'
  gem 'rails_12factor'
end
