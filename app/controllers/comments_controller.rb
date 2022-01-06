class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.js
        format.html { redirect_to @comment.album }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

=begin
  def _comments
    @album = Album.all.where(id: params[:id].to_i)
    respond_to do |format|
      format.js
    end
  end
=end

  private

  def comment_params
    params.require(:comment).permit(:content, :parent_id).merge(album_id: params[:album_id])
  end
end
