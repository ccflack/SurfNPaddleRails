class PostsController < ApplicationController


  def index
    @posts = Post.all.sort_by { |post| post.created_at }.reverse
  end

  def newest
    @ordered = Post.all.sort_by { |post| post.created_at }.reverse
    @post = Post.find(params[:id])
    @newest = (Post.all.sort_by { |post| post.created_at }.reverse).first
  end

  def show
    @ordered = Post.all.sort_by { |post| post.created_at }.reverse
    @post = Post.find(params[:id])
  end

end
