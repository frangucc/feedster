class Item < ActiveRecord::Base
  extend FriendlyId

  belongs_to :category

  friendly_id :title, use: :slugged

end
