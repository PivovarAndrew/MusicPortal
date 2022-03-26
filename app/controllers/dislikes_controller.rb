class DislikesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @dislike = current_user.dislikes.new(dislike_params)
    authorize_dislike!
    @dislike.save
    like = current_user.likes.find_by(album_id: @dislike.album_id)
    like&.destroy
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @dislike = current_user.dislikes.find(params[:id])
    authorize_dislike!
    @dislike.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def dislike_params
    params.require(:dislike).permit(:album_id)
  end

  def authorize_dislike!
    authorize(@dislike || Album)
  end
end
