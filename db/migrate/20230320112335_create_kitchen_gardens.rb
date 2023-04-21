class CreateKitchenGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :kitchen_gardens do |t|

      t.timestamps
    end
  end
end
