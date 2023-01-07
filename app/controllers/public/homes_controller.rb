class Public::HomesController < ApplicationController
  def top
    @user = current_user
    @ranks = Comic.find(Like.group(:comic_id).order('count(comic_id) desc').limit(5).pluck(:comic_id))
    @new_comics = Comic.all.order(created_at: :desc).page(params[:page]).per(1)
  end
end
