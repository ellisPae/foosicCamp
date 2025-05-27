source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Stable version of Rails that fully supports Ruby 3.2+
gem 'rails', '~> 7.1.3'

# Use PostgreSQL as the database for Active Record
gem 'pg', '>= 1.1', '< 2.0'  # More modern lower bound than 0.18

# Use Puma as the app server
gem 'puma', '~> 5.6'

# Use SCSS for stylesheets
gem 'sassc-rails', '~> 2.1'

# JavaScript compressor (not needed if using Webpack, esbuild, or import maps)
# gem 'uglifier', '>= 1.3.0'

# Amazon S3 for ActiveStorage or custom file handling
gem 'aws-sdk-s3'

# For .coffee assets (still works, but consider migrating away if possible)
gem 'coffee-rails', '~> 5.0'  # updated for Rails 7 compatibility

# Turbolinks is deprecated – use Turbo if starting fresh
# gem 'turbolinks', '~> 5'
gem 'turbo-rails'  # Rails 7 Hotwire equivalent of Turbolinks

# JSON builder
gem 'jbuilder', '~> 2.11'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# For fast boots (optional but helpful)
gem 'bootsnap', '>= 1.4.0', require: false

# Rails + jQuery integration (still works)
gem 'jquery-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails'

  # ⚠️ annotate does not support Rails 7 well
  # You may need to comment this out or pin it to:
  # gem 'annotate', github: 'ctran/annotate_models'
end

group :development do
  gem 'web-console', '>= 4.0.0'
  gem 'listen', '~> 3.7'

  # Optional — comment in if you want Spring
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 3.36'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Only for Windows environments
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
