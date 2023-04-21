class Diary < ApplicationRecord
  belongs_to :kitchen_garden, foreign_key: :kitchen_garden_id

  validates :title, presence: true
  validates :body, presence: true
  validates :created_at, uniqueness: { scope: :kitchen_garden_id, message: "同日の日誌が存在します" }

end
