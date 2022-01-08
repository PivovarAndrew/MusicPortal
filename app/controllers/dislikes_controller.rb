class DislikesController < ApplicationController
  def create
    @dislike = current_user.dislike.new(dislike_params)
    @dislike.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @dislike = current_user.dislike.find(params[:id])
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
