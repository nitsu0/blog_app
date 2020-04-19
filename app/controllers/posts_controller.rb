class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.save!
    redirect_to posts_url, notice: "「#{post.name}」を投稿しました。"
  end

  def edit
  end

  private

  def post_params
    params.require(:post).permit(:name, :description)
  end
end
