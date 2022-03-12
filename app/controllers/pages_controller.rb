class PagesController < ApplicationController
  MAX_COUNT_OF_ALBUMS_PER_PAGE = 12
  MAX_CHART_ELEMENTS_COUNT = 20

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

  def charts
    @albums_groupped_by_performer = Album.group(:performer).count.first(MAX_CHART_ELEMENTS_COUNT)
    @albums_groupped_by_countries = Album.group(:countries).count.first(MAX_CHART_ELEMENTS_COUNT)
    @albums_groupped_by_genres = Album.group(:main_genre).count.first(MAX_CHART_ELEMENTS_COUNT)
    @albums_groupped_by_age_restrictions = Album.group(:age_restrictions).count
    
    @albums_groupped_by_likes_count = Album.joins(:likes).group(:name).count.first(MAX_CHART_ELEMENTS_COUNT)
    @albums_groupped_by_dislikes_count = Album.joins(:dislikes).group(:name).count.first(MAX_CHART_ELEMENTS_COUNT)
    @albums_groupped_by_comments_count = Album.joins(:comments).group(:name).count.first(MAX_CHART_ELEMENTS_COUNT)
  end
end
