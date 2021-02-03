class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id:"DESC")
  end

  def create
    post = Post.create(content:params[:content],checked:false)
    render json:{post: post}
  end

  def checked
    binding.pry
  end
    post = Post.find(params[:id])
    if post.checked
      post.updated(checked: false)
    else
      post.updated(checked: true)
    end

    item =Post.find(params[:id])
    render json:{ post: item }
end
