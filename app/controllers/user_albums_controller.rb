class UserAlbumsController < ApplicationController
  before_action :set_user_album, only: %i[ update destroy ]

  # GET /user_albums or /user_albums.json
  def index
    @albums = current_user.albums
  end

  # POST /user_albums or /user_albums.json
  def create
    @user_album = UserAlbum.new(user_id: current_user.id, album_id: params[:id])

    respond_to do |format|
      if @user_album.save
        format.html { redirect_to @user_album, notice: "User album was successfully created." }
        format.json { render :show, status: :created, location: @user_album }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_albums/1 or /user_albums/1.json
  def destroy
    @user_album.destroy
    respond_to do |format|
      format.html { redirect_to user_albums_url, notice: "User album was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_album
    @user_album = UserAlbum.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_album_params
    params.require(:user_album).permit(:user_id, :album_id)
  end
end
