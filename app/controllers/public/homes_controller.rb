class Public::HomesController < ApplicationController
  def top
    @user = current_user
    @like_comics = Comic.includes(:likes).sort {|a,b| b.likes.size <=> a.likes.size}
    @new_comics = Comic.all.order(created_at: :desc)
  end
end
