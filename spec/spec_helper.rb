ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../../config/environment", __FILE__)

require "rspec/rails"
require "rspec/autorun"

# All Ruby files in spec/support/ get included.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  # Use ActiveRecord fixtures.
  # config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # Run each example within a transaction.
  # config.use_transactional_fixtures = true

  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #   --seed 1234
  config.order = "random"
end

module ::RSpec::Core
  class ExampleGroup
    include Capybara::DSL
    include Capybara::RSpecMatchers
  end
end
