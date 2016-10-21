class SearchController < ApplicationController

  def posts
    @posts = Post.all
    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
    else
      @posts = Post.all.order('created_at DESC')
    end
  end

  def show
    @latest = Post.all.sort_by { |post| post.created_at }
    @oldest = Post.all.sort_by { |post| post.created_at }.first
    @title = "About"
  end

end
