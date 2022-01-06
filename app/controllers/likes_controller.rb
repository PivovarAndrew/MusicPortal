class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)
    respond_to do |format|
      if @track.save
        redirect_to @like.album
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    album = @like.album
    @like.destroy
    respond_to do |format|
      redirect_to album
    end
  end

  private

  def like_params
    params.require(:like).permit(:album_id)
  end
end
