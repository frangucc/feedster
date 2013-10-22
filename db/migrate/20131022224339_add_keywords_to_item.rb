class AddKeywordsToItem < ActiveRecord::Migration
  def change
    add_column :items, :keywords, :string
    add_column :items, :inspiration_url, :string
  end
end
