class PostsController < ApplicationController
  def index
    @posts = Post.all
    @new_post = Post.new
  end

  def create
    Post.create!(params[:post])
    redirect_to posts_path
  end
end
