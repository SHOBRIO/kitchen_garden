class Guide < ApplicationRecord
  belongs_to :vegetable
  has_one_attached :image
end
