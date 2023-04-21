class Vegetable < ApplicationRecord
  has_many :plantings
  has_many :kitchen_gardens, through: :plantings
  has_many :guides
  has_one_attached :image

end
