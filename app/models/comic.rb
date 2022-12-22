class Comic < ApplicationRecord
  
  belongs_to :user
  belongs_to :genre
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  has_one_attached :thumbnail
  has_many_attached :images
  
  def self.looks(search, word)
    if search == "perfect_match"
      @comic = Comic.where("name LIKE?", "#{word}")
    elsif search == "forward_match"
      @comic = Comic.where("name LIKE?","#{word}%")
    elsif search == "backward_match"
      @comic = Comic.where("name LIKE?","%#{word}")
    elsif search == "partial_match"
      @comic = Comic.where("name LIKE?","%#{word}%")
    else
      @comic = Comic.all
    end
  end
  
  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end
  
  enum status: { draft: 0, public_posted: 1, private_posted: 2}
end
