class PostsController < ApplicationController
  def index
    @posts = Post.all
    @new_post = Post.new
    @new_post.build_post_body
  end

  def create
    post = Post.create!(params[:post])
    render :update do |page|
      page.insert_html :top, 'posts', :partial => 'post', :object => post
    end
  end

  def destroy
    Post.destroy(params[:id])
    render :update do |page|
      page.remove %{post_#{params[:id]}}
    end
  end
end
