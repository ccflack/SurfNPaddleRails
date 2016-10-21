class AboutController < ApplicationController

  def show
    @latest = Post.all.sort_by { |post| post.created_at }
    @oldest = Post.all.sort_by { |post| post.created_at }.first
    @title = "About"
  end

end
