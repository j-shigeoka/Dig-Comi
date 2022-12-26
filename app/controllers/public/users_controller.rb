class Public::UsersController < ApplicationController
  before_action :authenticate_user!, except: [:guest_sign_in]
  
  def show
    @user = User.find(params[:id])
    @current_user = current_user
    @comics = @user.comics
    @like_comics = Comic.joins(:likes).where('likes.user_id = ?', @user.id).page(params[:page]).per(16)
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    @user.update(user_params)
    redirect_to users_my_page_path
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
  
  def guest_sign_in
    user = User.find_or_create_by(email: "guest@example.com", first_name: "ト", last_name: "ゲス", first_name_kana: "a", last_name_kana: "a") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user 
    redirect_to root_path
  end
  
  private
  
  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email)
  end
end
