class AddUserIdToKitchenGardens < ActiveRecord::Migration[7.0]
  def change
    add_reference :kitchen_gardens, :user, null: false, foreign_key: true
  end
end