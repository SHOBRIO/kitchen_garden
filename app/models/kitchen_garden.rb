class KitchenGarden < ApplicationRecord
  belongs_to :user
  has_many :diaries, dependent: :destroy
  has_many :plantings, dependent: :destroy
  has_many :vegetables, through: :plantings

  enum size: { small: 0, medium: 1, large: 2 }

  SIZES = {
    small: 0,
    medium: 1,
    large: 2
  }.freeze

end
