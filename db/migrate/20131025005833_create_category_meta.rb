class CreateCategoryMeta < ActiveRecord::Migration
  def change
    create_table :category_meta do |t|
      t.integer :category_id
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
