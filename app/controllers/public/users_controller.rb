class Public::UsersController < ApplicationController
  def show
    @user = current_user
    #likes = Like.where(user_id: @user.id).pluck(:comic_id)
    #likes = Like.where(user_id: @user.id)
    @like_comics = @user.comics.joins(:likes)
   #byebug
    #@like_comics = Comic.find(likes)
  end
  
  def edit
    @user = current_user
  end

  def unsubscribe
    @user = current_user
  end
  
  def withdraw
    @user = current_user
     @user.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end
  private
  
  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email)
  end
end
