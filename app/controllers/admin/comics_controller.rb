class Admin::ComicsController < ApplicationController
  def index
    @comics = Comic.all
    @new_comics = @comics.order(created_at: :desc).page(params[:page]).per(10)
  end

  def show
    @comic = Comic.find(params[:id])
    @user = @comic.user
  end

  def page
    @comic = Comic.find(params[:comic_id])
    @pages = @comic.images
  end

  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
    redirect_to admin_comics_path
  end
  
  
  private
  
  
  def comic_params
    params.require(:comic).permit(:name, :introduction, :genre_id, :thumbnail, images: [])
  end
end
