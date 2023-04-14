class Guide < ApplicationRecord
  belongs_to :vegetable
  has_one_attached :photo
end
