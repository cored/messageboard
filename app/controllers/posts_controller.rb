class PostsController < ApplicationController
  def new 
    @post = Post.new
  end

  def create
    if @post.save
      redirect_to post_path(@post.id)
    end
    render 'new'
  end

  def show 

  end
end
