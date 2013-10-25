class CreateItemMeta < ActiveRecord::Migration
  def change
    create_table :item_meta do |t|
      t.integer :item_id
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
