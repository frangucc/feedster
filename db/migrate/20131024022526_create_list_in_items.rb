class CreateListInItems < ActiveRecord::Migration
  def change
    create_table :list_in_items do |t|
      t.integer :list_id
      t.integer :item_id

      t.timestamps
    end
  end
end
