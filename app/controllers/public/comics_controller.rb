class Public::ComicsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
    @comic.user_id = current_user.id
    @comic.save
    redirect_to comics_path
  end

  def index
    @comics = Comic.all
    @genres = Genre.all
  end

  def edit
    @comic = Comic.find(params[:id])
  end
  
  def update
    @comic = Comic.find(params[:id])
    @comic.update(comic_params)
    redirect_to comic_path(@comic.id)
  end

  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
    redirect_to comics_path
  end

  def show
    @comic = Comic.find(params[:id])
    @user = @comic.user
    @current_user = current_user
    @comment = Comment.new
  end

  def page
    @comic = Comic.find(params[:comic_id])
    @pages = @comic.images
  end

  private


  def comic_params
    params.require(:comic).permit(:name, :introduction, :genre_id, :thumbnail, images: [])
  end
end
