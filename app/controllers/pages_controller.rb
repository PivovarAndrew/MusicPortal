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
    
    @album_performers_groupped_by_likes_count = Album.joins(:likes).group(:performer).count
    @album_genres_groupped_by_likes_count = Album.joins(:likes).group(:main_genre).count
    @album_countries_groupped_by_likes_count = Album.joins(:likes).group(:countries).count
    @album_age_restrictions_groupped_by_likes_count = Album.joins(:likes).group(:age_restrictions).count
    @album_performers_groupped_by_dislikes_count = Album.joins(:dislikes).group(:performer).count
    @album_genres_groupped_by_dislikes_count = Album.joins(:dislikes).group(:main_genre).count
    @album_countries_groupped_by_dislikes_count = Album.joins(:dislikes).group(:countries).count
    @album_age_restrictions_groupped_by_dislikes_count = Album.joins(:dislikes).group(:age_restrictions).count
    @album_performers_groupped_by_comments_count = Album.joins(:comments).group(:performer).count
    @album_genres_groupped_by_comments_count = Album.joins(:comments).group(:main_genre).count
    @album_countries_groupped_by_comments_count = Album.joins(:comments).group(:countries).count
    @album_age_restrictions_groupped_by_comments_count = Album.joins(:comments).group(:age_restrictions).count

    @user_create_groupped_by_monthes = User.group_by_month(:created_at, format: "%b %Y").count
    @like_create_groupped_by_monthes = Like.group_by_month(:created_at, format: "%b %Y").count
    @dislike_create_groupped_by_monthes = Dislike.group_by_month(:created_at, format: "%b %Y").count
    @comment_create_groupped_by_monthes = Comment.group_by_month(:created_at, format: "%b %Y").count
    @album_create_groupped_by_monthes = Album.group_by_month(:created_at, format: "%b %Y").count
    @track_create_groupped_by_monthes = Track.group_by_month(:created_at, format: "%b %Y").count
    @user_create_groupped_by_weeks = User.group_by_week(:created_at).count
    @like_create_groupped_by_weeks = Like.group_by_week(:created_at).count
    @dislike_create_groupped_by_weeks = Dislike.group_by_week(:created_at).count
    @comment_create_groupped_by_weeks = Comment.group_by_week(:created_at).count
    @album_create_groupped_by_weeks = Album.group_by_week(:created_at).count
    @track_create_groupped_by_weeks = Track.group_by_week(:created_at).count
  end
end
