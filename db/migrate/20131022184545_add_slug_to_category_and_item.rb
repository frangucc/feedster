class AddSlugToCategoryAndItem < ActiveRecord::Migration
  def change
    add_column :categories, :slug, :string
    add_column :items, :slug, :string

    add_index :categories, :slug, unique: true
    add_index :items, :slug, unique: true
  end
end
