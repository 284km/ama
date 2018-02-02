require "spec_helper"

ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../config/environment", __dir__)
require "rspec/rails"

Dir[Rails.root.join("spec", "support", "**", "*.rb")].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = Rails.root.join("spec", "fixtures")
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.include FactoryBot::Syntax::Methods
  config.include ActionDispatch::TestProcess

  config.before do |example|
    if example.metadata[:type] == :system
      if example.metadata[:js]
        driven_by :selenium_chrome_headless, screen_size: [1400, 1400]
      else
        driven_by :rack_test
      end
    end
  end
end
