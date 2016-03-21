class PostsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  #strong parameters, define or specifically say what parameters you want to allow

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
