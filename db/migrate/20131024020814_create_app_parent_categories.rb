class CreateAppParentCategories < ActiveRecord::Migration
  def change
    create_table :app_parent_categories do |t|
      t.integer :app_id
      t.integer :category_id

      t.timestamps
    end
  end
end
