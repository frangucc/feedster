class Item < ActiveRecord::Base
  extend FriendlyId

  belongs_to :category

  friendly_id :tiitle, use: :slugged

end
