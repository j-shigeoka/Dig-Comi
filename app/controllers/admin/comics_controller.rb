class Admin::ComicsController < ApplicationController
  def index
    @comics = Comic.all
  end

  def show
    @comic = Comic.find(params[:id])
    @likes = Like.where(comic_id: params[:id]).count
  end

  def edit
  end
end
