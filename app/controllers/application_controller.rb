class ApplicationController < ActionController::Base
  before_action :set_search
  
  def set_search
    @search = Comic.ransack(params[:q])
    @search_comic = @search.result
  end
end
