require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest
  test 'create a post' do
    visit '/'
    fill_in 'Title', :with => 'Making a sandwich'
    fill_in 'Body', :with => 'ham and cheese'
    click_button 'Create Post'

    assert_see 'Making a sandwich'
    assert_see 'ham and cheese'
  end
end