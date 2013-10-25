class AddAttachmentToCategoryAndItem < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.attachment :image
    end
    change_table :categories do |t|
      t.attachment :image
    end
  end
end
