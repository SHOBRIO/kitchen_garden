class AddKitchenGardenIdToDiaries < ActiveRecord::Migration[7.0]
  def change
    add_reference :diaries, :kitchen_garden, null: false, foreign_key: true
  end
end
