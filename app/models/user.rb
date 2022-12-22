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
  
  def self.looks(search, word)
    if search == "perfect_match"
      if word.include?(' ') || word.include?('　')
          # 全角スペース を 半角スペース へ置き換え
          word = word.tr('　', ' ') if word.include?('　')
          # 姓・名を分割
          last_name, first_name = word.split(' ')
          # and 条件で検索
          @user = User.where('last_name LIKE ? AND first_name LIKE ?', "%#{last_name}%", "%#{first_name}%")
      else
          # 姓名どちらかのみ入力されている場合
          @user =  User.where('last_name LIKE :word OR first_name LIKE :word', word: "#{word}")
      end
    elsif search == "forward_match"
      if word.include?(' ') || word.include?('　')
          # 全角スペース を 半角スペース へ置き換え
          word = word.tr('　', ' ') if word.include?('　')
          # 姓・名を分割
          last_name, first_name = word.split(' ')
          # and 条件で検索
          @user = User.where('last_name LIKE ? OR first_name LIKE ?', "#{last_name}%", "#{first_name}%")
      else
          # 姓名どちらかのみ入力されている場合
          @user =  User.where('last_name LIKE :word OR first_name LIKE :word', word: "#{word}%")
      end
    elsif search == "backward_match"
      if word.include?(' ') || word.include?('　')
          # 全角スペース を 半角スペース へ置き換え
          word = word.tr('　', ' ') if word.include?('　')
          # 姓・名を分割
          last_name, first_name = word.split(' ')
          # and 条件で検索
          @user = User.where('last_name LIKE ? OR first_name LIKE ?', "%#{last_name}", "%#{first_name}")
      else
          # 姓名どちらかのみ入力されている場合
          @user =  User.where('last_name LIKE :word OR first_name LIKE :word', word: "%#{word}")
      end
    elsif search == "partial_match"
      if word.include?(' ') || word.include?('　')
          # 全角スペース を 半角スペース へ置き換え
          word = word.tr('　', ' ') if word.include?('　')
          # 姓・名を分割
          last_name, first_name = word.split(' ')
          # and 条件で検索
          @user = User.where('last_name LIKE ? OR first_name LIKE ?', "%#{last_name}%", "%#{first_name}%")
      else
          # 姓名どちらかのみ入力されている場合
          @user =  User.where('last_name LIKE :word OR first_name LIKE :word', word: "%#{word}%")
      end
    else
      @user = User.all
    end
  end
  
  def active_for_authentication? #ログイン時に退会済みのユーザーが同じアカウントでログイン出来ないよう制約を設けている
    super && (is_deleted == false)
  end
end
