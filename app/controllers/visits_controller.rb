class VisitsController < ApplicationController

  def index
    @bookmark = Bookmark.find_by_slug(params[:slug])
    redirect_to "http://" + @bookmark.url
  end
end
