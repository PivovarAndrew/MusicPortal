require_relative "../services/search_service"

class PagesController < ApplicationController
  def home
  end

  def _searched_albums
    @searched_albums = SearchService.new.search_album(params[:text])
    respond_to do |format|
      format.js
    end
  end
end
