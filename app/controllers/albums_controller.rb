require_relative "../services/filter_service"
require_relative "../services/api/album_data_service"

class AlbumsController < ApplicationController
  before_action :set_album, only: %i[ show edit update destroy ]

  MAX_COUNT_OF_ALBUMS_PER_PAGE = 12

  # GET /albums or /albums.json
  def index
    @albums = Album.all.paginate(page: params[:page], per_page: MAX_COUNT_OF_ALBUMS_PER_PAGE).order("created_at desc")
  end

  def _searched_api_albums
    @searched_api_albums = AlbumDataService::AlbumDataExtracter.new(
      AlbumDataService::SearchAlbumData.new(params[:text]).search_album_data
    ).get_albums

    respond_to do |format|
      format.js
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
