class Item < ActiveRecord::Base
  extend FriendlyId

  belongs_to :category

  belongs_to :author

  has_many :related_items,
           :foreign_key => :from_item_id

  has_many :items,
           :through => :related_items,
           :source => :to_item

  friendly_id :title, use: :slugged

end
