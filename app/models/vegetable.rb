class Vegetable < ApplicationRecord
  has_many :plantings, dependent: :destroy
  has_many :kitchengardens, through: :plantings
  has_many :guides
end
