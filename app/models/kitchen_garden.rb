class KitchenGarden < ApplicationRecord
  belongs_to :user
  has_many :diaries, dependent: :destroy
  has_many :plantings, dependent: :destroy
  has_many :vegetables, through: :plantings

  validate :kitchen_garden_must_exist
  
  def kitchen_garden_must_exist
    errors.add(:kitchen_garden, "must exist") unless kitchen_garden.present?
  end
end
