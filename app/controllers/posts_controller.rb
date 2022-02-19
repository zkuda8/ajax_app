class PostsController < ApplicationController

  def index
    # @posts = Post.all
    @posts = Post.order(id: "DESC")# 降順で編集
  end

  # def new
  # end

  def create
    # binding.pry
    # Post.create(content: params[:content])
    post = Post.create(content: params[:content])
    # redirect_to action: :index  # 追記する
    render json:{ post: post }
  end
end
