class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = current_user.comments.new(comment_params)
    authorize(@comment || Comment)
    @comment.save
    respond_to do |format|
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :parent_id).merge(album_id: params[:album_id])
  end
end
