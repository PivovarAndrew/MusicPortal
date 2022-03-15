# frozen_string_literal: true

require_relative "../services/filter_service"
require_relative "../services/api/deezer/album_data_extracter"
require_relative "../services/api/deezer/search_album_data"

class AlbumsController < ApplicationController
  before_action :set_album, only: %i[ show edit update destroy ]

  MAX_COUNT_OF_ALBUMS_PER_PAGE = 12
  ALBUM_CSV_ATTRIBUTE_NAMES = ['name',
                               'image_preview_url',
                               'release_date',
                               'countries',
                               'main_genre',
                               'performer',
                               'age_restrictions']

  # GET /albums or /albums.json
  def index
    @albums = Album.all.paginate(page: params[:page], per_page: MAX_COUNT_OF_ALBUMS_PER_PAGE).order("created_at desc")
    respond_to do |format|
      format.html
      format.csv { send_data @albums.to_csv(ALBUM_CSV_ATTRIBUTE_NAMES) }
    end
  end

  def import_to_csv
    Album.import_to_csv(params[:csv_file])
    redirect_to root_url, notice: 'Albums uploaded successfully'
   end

  def _searched_api_albums
    searched_album_data = AlbumDataService::AlbumDataExtracter.new(
      AlbumDataService::SearchAlbumData.new(params[:text]).search_album_data
    )

    @searched_albums = searched_album_data.albums
    
    respond_to do |format|
      format.js
    end
  end

  def save_api_album
    album = Album.new(Rack::Utils.parse_nested_query params[:album])  
    album.save!
    params[:album_tracks].split.each { |track| album.tracks << Track.new(Rack::Utils.parse_nested_query(track)) }
    respond_to do |format|
      format.html { redirect_to album, notice: "Album was successfully added." }
      format.json { render :show, status: :created, location: @album }
    end
  end

  # GET /albums/1 or /albums/1.json
  def show
  end

  # GET /albums/new
  def new
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
  end

  # POST /albums or /albums.json
  def create
    @album = Album.new(album_params)
    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: "Album was successfully created." }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albums/1 or /albums/1.json
  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, notice: "Album was successfully updated." }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1 or /albums/1.json
  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: "Album was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def _album_tracks
    @current_album = Album.find(params[:id].to_i)
    respond_to do |format|
      format.js
    end
  end

  def charts
    @album = Album.find(params[:album_id])
    @album_likes_create_groupped_by_monthes = @album.likes.group_by_month(:created_at, format: "%b %Y").count
    @album_dislikes_create_groupped_by_monthes = @album.dislikes.group_by_month(:created_at, format: "%b %Y").count
    @album_comments_create_groupped_by_monthes = @album.comments.group_by_month(:created_at, format: "%b %Y").count
    @album_likes_create_groupped_by_weeks = @album.likes.group_by_week(:created_at).count
    @album_dislikes_create_groupped_by_weeks = @album.dislikes.group_by_week(:created_at).count
    @album_comments_create_groupped_by_weeks = @album.comments.group_by_week(:created_at).count
    @album_likes_create_groupped_by_day_of_weeks = @album.likes.group_by_day_of_week(:created_at, format: "%a").count
    @album_dislikes_create_groupped_by_day_of_weeks  = @album.dislikes.group_by_day_of_week(:created_at, format: "%a").count
    @album_comments_create_groupped_by_day_of_weeks  = @album.comments.group_by_day_of_week(:created_at, format: "%a").count
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_album
    @album = Album.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def album_params
    params.require(:album).permit(:name,
                                  :description,
                                  :image_preview_url,
                                  :release_date,
                                  :countries,
                                  :main_genre,
                                  :performer,
                                  :age_restrictions)
  end
end
