source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.rc1', '< 5.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.x'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Carrierwave for backend image uploads; Read more: https://github.com/carrierwaveuploader/carrierwave
gem 'carrierwave'
# Cloudinary for image storage and manipulation; Read more: https://github.com/cloudinary/cloudinary_gem
gem 'cloudinary'
# Bootstrap for css framework; Read more: https://github.com/twbs/bootstrap-rubygem
gem 'bootstrap', '~> 4.0.0.alpha3'
# High Voltage for static pages; Read more: https://github.com/thoughtbot/high_voltage
gem 'high_voltage', '~> 3.0.0'
# HTML utilities
gem 'flutie'
# use SLIM for templating
gem 'slim-rails'
# flash translations; Read more: https://github.com/plataformatec/responders
gem 'responders'
# Masonry for fluid multi column layouts
gem 'masonry-rails', github: 'ygamretuta/masonry-rails'
# Devise for authentication; Read more: https://github.com/plataformatec/devise
gem 'devise'
# Fontawesome for icons; Read more: https://github.com/bokmann/font-awesome-rails
gem 'font-awesome-rails'
# ActsAsTaggable for categorization
gem 'acts-as-taggable-on', github: 'ygamretuta/acts-as-taggable-on'
# Select2 for tagging form
gem 'select2-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Quiet Assets mute asset log; Read more: https://github.com/evrone/quiet_assets
  gem 'quiet_assets'
  # Annotate to see AR fields on model files
  gem 'annotate'
end

group :production do
  gem 'rails_12factor'
end

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby '2.3.0'