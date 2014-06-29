source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'nested_form', '0.2.3'
gem 'friendly_id', '~>4.0.4'
gem "webrick", "~> 1.3.1"
gem 'activerecord-postgresql-adapter'
gem 'mysql2psql'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'jquery-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'therubyracer'
end

group :production do
  gem "pg"
end

group :development, :test do
  gem 'mysql2', '0.3.11'
  gem 'debugger'
  gem 'annotate', '2.4.1.beta1'
end