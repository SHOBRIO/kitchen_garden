class CreatePlantings < ActiveRecord::Migration[7.0]
  def change
    create_table :plantings do |t|
      t.references :kitchen_garden, null: false, foreign_key: true
      t.references :vegetable, null: false, foreign_key: true
      t.boolean :publish, default: false, null: false
      t.date :sowing_date
      t.date :germination_date
      t.date :seedling_date

      t.timestamps
    end
  end
end
