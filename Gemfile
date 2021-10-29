source 'https://rubygems.org'
ruby '2.7.4'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.6'
gem 'bootstrap-sass', '~> 3.4.1'
gem 'haml', '~> 5.2.2'
gem 'pg'
gem 'puma', '~> 5.5.2'
gem 'sass-rails', '~> 6.0.0'
gem 'uglifier', '>= 4.2.0'
gem 'coffee-rails', '~> 5.0.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5.2.1'
gem 'jbuilder', '~> 2.11.2'
gem 'bcrypt'
gem 'recaptcha', require: 'recaptcha/rails'
gem 'paperclip', '~> 5.2.1'
gem 'aws-sdk', '~> 2.9.0'
gem 'rqrcode', '~> 2.1.0'
gem 'kaminari'
gem 'webpacker', '5.4.3'
gem 'devise', '>= 4.8.0'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection', '~> 1.0'
gem 'bootsnap'

group :test do
  gem 'simplecov', '~> 0.21.2', require: false
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 5.0.2'
  gem 'rspec-mocks', '~> 3.10.2'
  gem 'shoulda-matchers', '~> 5.0.0'
  gem 'capybara'
  gem 'factory_bot_rails', '~> 6.2.0'
  gem 'dotenv-rails'
  gem 'poltergeist'
  gem 'foreman', '~> 0.87.2'
  gem 'haml-rails', '~> 2.0.1'
end

group :development do
  gem 'web-console', '>= 3.7.0'
  gem 'listen', '~> 3.7.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.1'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'spring-commands-rspec'
end

group :production do
  gem 'airbrake'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
