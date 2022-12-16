class Comic < ApplicationRecord
  
  belongs_to :user
  belongs_to :genre
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  has_one_attached :thumbnail
  has_many_attached :images
  
  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end
  
  enum status: { draft: 0, public_posted: 1, private_posted: 2}
end
