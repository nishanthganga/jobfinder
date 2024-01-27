source 'https://rubygems.org'

ruby "2.4.1"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.7', '>= 3.7.1'
  gem 'capybara', '~> 2.15', '>= 2.15.4'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
  gem "factory_bot_rails", "~> 4.0"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#Newly added Gems for the application.
gem 'haml'
gem 'jquery-rails'
gem 'twitter', '~> 6.1'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'gritter', '~> 1.2'
gem 'twitter-text', '~> 1.14', '>= 1.14.7'
gem 'active_model_serializers', '~> 0.10.6'
gem 'simplecov', :require => false, :group => :test
gem 'devise', '~> 4.3'
gem 'friendly_id', '~> 5.2', '>= 5.2.3'
gem 'tinymce-rails', '~> 4.4.3'