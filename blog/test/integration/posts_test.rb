require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest
  test 'create a post' do
    visit '/'
    assert_see 'Posts'
  end
end
