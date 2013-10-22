class Item < ActiveRecord::Base
  extend FriendlyId

  belongs_to :category

  belongs_to :author

  friendly_id :title, use: :slugged

end
