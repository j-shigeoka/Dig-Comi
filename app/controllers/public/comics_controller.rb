class Public::ComicsController < ApplicationController
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
    redirect_to comic_path(comic.id)
  end

  def show
    @comic = Comic.find(params[:id])
    @comment = Comment.new
  end


  private


  def comic_params
    params.require(:comic).permit(:name, :introduction, :genre_id, images: [])
  end
end
