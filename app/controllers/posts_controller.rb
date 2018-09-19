class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  # we need to define what our params will be allowed to include
  private def post_params
    params.require(:post).permit(:title, :body)
  end
end
