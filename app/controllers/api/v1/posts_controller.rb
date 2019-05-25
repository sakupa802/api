class Api::V1::PostsController < ApplicationController
  def index
    posts = Post.order(created_at: :desc)
    render json: { status: 'SUCCESS', message: 'loaded posts', data: posts }
  end

  def show
    post = Post.find(params[:id])
    render json: { status: 'SUCCESS', message: 'loaded posts', data: post }
  end

  def create
    post_params = params.require(:post).permit(:title, :content)
    post = Post.create(post_params)
    render json: { status: 'SUCCESS', message: 'loaded posts', data: post }
  end
end
