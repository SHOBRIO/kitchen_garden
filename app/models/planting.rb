class Planting < ApplicationRecord
  belongs_to :kitchen_garden
  belongs_to :vegetable
  has_one_attached :image
end
