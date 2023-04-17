class KitchenGarden < ApplicationRecord
  belongs_to :user
  has_many :diaries, dependent: :destroy
  has_many :plantings, dependent: :destroy
  has_many :vegetables, through: :plantings

end
