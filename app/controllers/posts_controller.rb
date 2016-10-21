class PostsController < ApplicationController


  def index
    @posts = Post.all.sort_by { |post| post.created_at }.reverse
    if params[:id]
      @posts = Post.find(params[:id]).order('created_at DESC')
    else
      @posts = Post.all.order('created_at DESC')
    end
  end

  def newest
    @ordered = Post.all.sort_by { |post| post.created_at }.reverse
    @newest = (Post.all.sort_by { |post| post.created_at }.reverse).first
    @post = Post.find(params[:id])
    @title = @newest.title
  end

  def show
    @ordered = Post.all.sort_by { |post| post.created_at }.reverse
    @post = Post.find(params[:id])
    @title = @post.title
  end

end
