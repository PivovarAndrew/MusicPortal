class TracksController < ApplicationController
  before_action :album, only: %i[ new create show edit update destroy ]
  before_action :set_track, only: %i[ show edit update destroy ]

  # GET /tracks or /tracks.json
  def index
    @tracks = @album.tracks
  end

  # GET /tracks/1 or /tracks/1.json
  def show
  end

  # GET /tracks/new
  def new
    @track = Track.new
  end

  # GET /tracks/1/edit
  def edit
  end

  # POST /tracks or /tracks.json
  def create
    @album.tracks << Track.new(track_params)

    respond_to do |format|
        format.html { redirect_to @album, notice: "Track was successfully created." }
        format.json { render :show, status: :created, location: @track }

    end
  end

  # PATCH/PUT /tracks/1 or /tracks/1.json
  def update
    respond_to do |format|
      if @track.update(track_params)
        format.html { redirect_to @album, notice: "Track was successfully updated." }
        format.json { render :show, status: :ok, location: @track }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracks/1 or /tracks/1.json
  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to @album, notice: "Track was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_track
    @track = @album.tracks.find(params[:id])
  end

  def album
    @album = Album.find(params[:album_id])
  end

  # Only allow a list of trusted parameters through.
  def track_params
    params.require(:track).permit(:name,
                                  :description,
                                  :source_link,
                                  :release_date,
                                  :duration,
                                  :tags,
                                  :related_genres,
                                  :preview_picture,
                                  :album_id,
                                  :audio_link)
  end
end
