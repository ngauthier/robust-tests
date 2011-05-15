require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest
  setup do 
    visit '/'
    assert_see 'Posts'
  end

  test 'create a post' do
    Dom::Post.create(
      :title => 'Making a sandwich',
      :body => 'ham and cheese'
    )

    assert_equal 1, Dom::Post.count
    assert_equal 'Making a sandwich', Dom::Post.first.title
    assert_equal 'ham and cheese',    Dom::Post.first.body
  end

  test 'delete a post' do
    Dom::Post.create(
      :title => 'Making a sandwich',
      :body => 'ham and cheese'
    )

    assert_equal 1, Dom::Post.count
    assert_equal 'Making a sandwich', Dom::Post.first.title
    assert_equal 'ham and cheese',    Dom::Post.first.body

    Dom::Post.first.delete
    
    assert_equal 0, Dom::Post.count
  end
end
