source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'
gem 'bcrypt', '3.1.13'
gem 'faker', '2.1.2'
gem 'will_paginate', '3.1.8'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'bootstrap-sass', '3.4.1'
gem 'jquery-datetimepicker-rails'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.3'
gem 'rails-i18n'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3', '1.4.1'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'rubocop', require: false
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'guard',                    '2.16.2'
  gem 'guard-minitest',           '2.4.6'
  gem 'minitest',                 '5.11.3'
  gem 'minitest-reporters',       '1.3.8'
  gem 'rails-controller-testing', '1.0.4'
  gem 'webdrivers'
end

group :production do
  gem 'pg', '1.1.4'
end
