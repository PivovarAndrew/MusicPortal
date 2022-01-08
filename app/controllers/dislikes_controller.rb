class DislikesController < ApplicationController
  def create
    @dislike = current_user.dislikes.new(dislike_params)
    @dislike.save
    like = current_user.likes.find_by(album_id: @dislike.album_id)
    like&.destroy
    like&.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @dislike = current_user.dislikes.find(params[:id])
    @dislike.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def dislike_params
    params.require(:dislike).permit(:album_id)
  end
end
