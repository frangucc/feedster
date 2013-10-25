class Item < ActiveRecord::Base
  extend FriendlyId

  belongs_to :category

  belongs_to :author

  has_attached_file :image

  has_many :related_items,
           :foreign_key => :from_item_id

  has_many :items,
           :through => :related_items,
           :source => :to_item

  has_many :list_in_items

  has_many :lists,
           :through => :list_in_items

  has_many :attachments

  has_many :item_metas

  friendly_id :title, use: :slugged

end
