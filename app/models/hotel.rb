class Hotel < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :prefecture
  has_many :reviews
  has_many :reservations
  has_many :favorites

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end
