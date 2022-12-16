class Public::CommentsController < ApplicationController
  def create
    comic = Comic.find(params[:comic_id])
    comment = current_user.comments.new(comment_params)
    comment.comic_id = comic.id
    comment.save
    redirect_to request.referer
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to request.referer
  end
  
  
  private
  
  def comment_params
    params.require(:comment).permit(:content)
  end
end
