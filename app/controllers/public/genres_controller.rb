class Public::GenresController < ApplicationController
  def show
    @genres = Genre.all
    @search = Genre.find(params[:id])
    @searchs = @search.comics
  end
end
