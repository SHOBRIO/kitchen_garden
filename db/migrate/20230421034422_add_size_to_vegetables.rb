class AddSizeToVegetables < ActiveRecord::Migration[7.0]
  def change
    add_column :vegetables, :size, :integer, nunll: false, default: 0
  end
end
