class SearchesController < ApplicationController
  def search
    @range = params[:range]
    
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    elsif @range == "Comic"
      @comics = Comic.looks(params[:search], params[:word])
    else
      @genres == Genre.looks(params[:search], params[:word])
    end
  end
end
