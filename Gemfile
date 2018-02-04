source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem "rails", "~> 5.1"

gem "active_decorator"
gem "bootsnap", require: false
gem "gretel"
gem "hamlit-rails"
gem "kaminari"
gem "kaminari-i18n"
gem "meta-tags"
gem "omniauth-github"
gem "pg", "~> 0.18"
gem "puma", "~> 3.7"
gem "rails-i18n"
gem "validates_email_format_of"
gem "webpacker", "~> 3.2"

group :development, :test do
  gem "awesome_print"
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "hirb-unicode-steakknife"
  gem "pry-byebug"
  gem "pry-doc"
  gem "pry-rails"
  gem "pry-stack_explorer"
  gem "rspec-rails"
end

group :development do
  gem "annotate"
  gem "brakeman", require: false
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "onkcop", require: false
  gem "rails-erd"
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara"
  gem "chromedriver-helper"
  gem "launchy"
  gem "selenium-webdriver"
end
