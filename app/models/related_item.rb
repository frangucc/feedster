class RelatedItem < ActiveRecord::Base

  belongs_to :from_item, :class_name => 'Item'
  belongs_to :to_item, :class_name => 'Item'

end
