class Admin::ComicsController < ApplicationController
  def index
    @comics = Comic.all
    @new_comics = @comics.order(created_at: :desc).page(params[:page]).per(10)
  end

  def show
    @comic = Comic.find(params[:id])
  end

  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
    redirect_to admin_comics_path
  end
end
