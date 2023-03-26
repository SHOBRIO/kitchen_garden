class Diary < ApplicationRecord
  belongs_to :kitchen_garden, foreign_key: :kitchen_garden_id

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 3 }
end
