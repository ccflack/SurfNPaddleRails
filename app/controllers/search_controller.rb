class SearchController < ApplicationController

  def show

    @input = Project.search(params[:search])

  end

end
