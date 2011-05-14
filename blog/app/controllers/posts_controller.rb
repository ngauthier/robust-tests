class PostsController < ApplicationController
  def index
    @posts = Post.all
    @new_post = Post.new
  end

  def create
    post = Post.create!(params[:post])
    render :update do |page|
      page.insert_html :top, 'posts', :partial => 'post', :object => post
    end
  end
end
