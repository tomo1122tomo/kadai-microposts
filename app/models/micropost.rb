class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  
  #お気に入り
  has_many :favorites, dependent: :destroy
  has_many :liked, through: :favorites, source: :user, dependent: :destroy
  
end
