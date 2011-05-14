ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/dsl'
require 'cover_me'

Capybara.app = Blog::Application
Capybara.default_selector = :css
Capybara.default_driver = :selenium
DatabaseCleaner.strategy = :truncation



class ActiveSupport::TestCase
  self.use_transactional_fixtures = false
  include Capybara

  setup do
    Capybara.reset_sessions!
    DatabaseCleaner.start
  end

  teardown do
    DatabaseCleaner.clean
  end

  def assert_see(content, msg = nil)
    assert page.has_content?(content), (msg || %{Expected to see "#{content}"})
  end
  def refute_see(content, msg = nil)
    assert !page.has_content?(content), (msg || %{Did not expect to see "#{content}"})
  end
end
