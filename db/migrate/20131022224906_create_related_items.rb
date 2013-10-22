class CreateRelatedItems < ActiveRecord::Migration
  def change
    create_table :related_items do |t|
      t.integer :from_item_id
      t.integer :to_item_id

      t.timestamps
    end
  end
end
