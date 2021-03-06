class Item < ApplicationRecord
  belongs_to :user, optional: true
  has_many :favorites, dependent: :destroy
  has_many :item_comments, dependent: :destroy
  
  attachment :item_image
  
    def favorited_by?(user)
      favorites.where(user_id: user.id).exsits?
    end

  validates :name, presence: true
  validates :body, presence: true, length:{maximum: 200}
end
