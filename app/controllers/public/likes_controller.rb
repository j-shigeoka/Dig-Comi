class Public::LikesController < ApplicationController
  def create
   comic = Comic.find(params[:comic_id])
   like = current_user.likes.new(comic_id: comic.id)
   like.save
    redirect_to request.referer
  end
  
  def destroy
    comic = Comic.find(params[:comic_id])
    like = current_user.likes.find_by(comic_id: comic.id)
    like.destroy
    redirect_to request.referer
  end
end
