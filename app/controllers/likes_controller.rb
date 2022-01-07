class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)
    @like.save
    redirect_to @like.album
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    album = @like.album
    @like.destroy
    redirect_to album
  end

  private

  def like_params
    params.require(:like).permit(:album_id)
  end
end
