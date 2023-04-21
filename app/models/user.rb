class User < ApplicationRecord
  authenticates_with_sorcery!
  has_one :profile
  has_many :posts
  has_many :comments
  has_one :kitchen_garden

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true

  def mine?(object)
    id == object.user_id
  end

  def profile
    super || build_profile
  end

end
