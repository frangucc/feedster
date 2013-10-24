class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.boolean :ordered
      t.string :name
      t.string :comma_separated_items

      t.timestamps
    end
  end
end
