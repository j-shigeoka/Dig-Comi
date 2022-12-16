class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :comics, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  has_one_attached :image
  
  def full_name
    self.last_name + "" + self.first_name
  end
  
  def full_name_kana
    self.last_name_kana + "" + self.first_name_kana
  end
  
  def active_for_authentication? #ログイン時に退会済みのユーザーが同じアカウントでログイン出来ないよう制約を設けている
    super && (is_deleted == false)
  end
end
