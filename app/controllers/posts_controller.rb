class PostsController < ApplicationController

  def index
    # @posts = Post.all
    @posts = Post.order(id: "DESC")# 降順で編集
  end

  # def new
  # end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index  # 追記する
  end
end
