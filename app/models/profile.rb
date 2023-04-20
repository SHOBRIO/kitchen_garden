class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar

  validates :name, presence: true
  validates :name, length: { maximum: 20 }
  validates :name, uniqueness: true

  after_initialize :set_default, if: :new_record?

  def set_default
    self.name ||= "User_#{SecureRandom.alphanumeric(4)}"
    self.avatar ||= "assets/images/no_image_square.jpg"
  end

end
