class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    format.html { render :new, status: :unprocessable_entity } unless @comment.save
    redirect_to @comment.album
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(album_id: params[:album_id])
  end
end
