class PagesController < ApplicationController
  MAX_COUNT_OF_ALBUMS_PER_PAGE = 12

  def home
  end

  def _searched_albums
    @searched_albums = SearchService.new.search_album(params[:text])
    respond_to do |format|
      format.js
    end
  end

  def _pagy_filter_albums_grid
    @albums = FilterService.new
                           .filter_albums(params[:id], params[:selected_value])
                           .paginate(page: params[:page], per_page: MAX_COUNT_OF_ALBUMS_PER_PAGE).order("created_at desc")
    respond_to do |format|
      format.js
    end
  end

  def chart

  end
end
