source 'https://rubygems.org'

ruby '2.1.4'
gem 'rails', '4.1.6'
gem 'pg'

# Backend
gem 'devise'
gem 'figaro'
gem 'faker'
gem 'pundit'

# Frontend
gem 'font-awesome-rails'
gem 'high_voltage', '~> 2.1.0'

# Assets
gem 'sass-rails', '~> 4.0.3'
gem 'compass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.2'
gem 'autoprefixer-rails'

# Images Uploading
gem 'carrierwave'
gem 'mini_magick'
gem "fog"

group :development do
  gem 'hirb'
  gem 'letter_opener'
  gem 'pry-rails'
end

group :test, :development do
  gem 'awesome_print', :require => 'ap'
  gem 'thin'
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
  gem 'unicorn'
end
