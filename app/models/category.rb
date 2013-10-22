class Category < ActiveRecord::Base

  belongs_to :parent,
             :foreign_key => :parent_id,
             :class_name => "Category"

  has_many :items

end
