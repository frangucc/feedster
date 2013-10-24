class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :item_id
      t.attachment :file

      t.timestamps
    end
  end
end
