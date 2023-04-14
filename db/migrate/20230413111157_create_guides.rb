class CreateGuides < ActiveRecord::Migration[7.0]
  def change
    create_table :guides do |t|
      t.integer :difficulty
      t.string :sowing_month
      t.string :planting_month
      t.string :harvesting_month
      t.references :vegetable, null: false, foreign_key: true

      t.timestamps
    end
  end
end
