require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest
  test 'the application' do
    visit '/'
    assert_see 'Posts'
  end
end
