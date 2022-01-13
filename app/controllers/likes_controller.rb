class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)
    @like.save
    dislike = current_user.dislikes.find_by(album_id: @like.album_id)
    dislike&.destroy
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def like_params
    params.require(:like).permit(:album_id)
  end
end