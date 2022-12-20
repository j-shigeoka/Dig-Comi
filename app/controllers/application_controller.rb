class ApplicationController < ActionController::Base
  # def search
  #   # キーワード検索
  #   @search = Comic.ransack(params[:q])
  #   @results = @search.result.order("created_at DESC").page(params[:page]).per(10)

  #   # タグ検索
  #   @tag_search = Comic.tagged_with(params[:search])
  # end
  
  
  private
  
  
  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(Admin)
        admin_comics_path
    else
        root_path
    end
  end
  
  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
        root_path
    elsif resource_or_scope == :admin
        new_admin_session_path
    else
        root_path
    end
  end
end
