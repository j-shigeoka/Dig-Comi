class Public::GenresController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @genres = Genre.all
    @search = Genre.find(params[:id])
    @searchs = @search.comics
  end
end
