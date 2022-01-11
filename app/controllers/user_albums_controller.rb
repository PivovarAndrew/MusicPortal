class UserAlbumsController < ApplicationController
  before_action :set_user_album, only: %i[ update destroy ]

  MAX_COUNT_OF_ALBUMS_PER_PAGE = 12

  # GET /user_albums or /user_albums.json
  def index
    @albums = current_user.albums.paginate(page: params[:page], per_page: MAX_COUNT_OF_ALBUMS_PER_PAGE).order("created_at desc")
  end

  # POST /user_albums or /user_albums.json
  def _add_album_to_playist
    @user_album = UserAlbum.new(user_id: current_user.id, album_id: params[:id])
    redirect_to root_path if @user_album.save
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
