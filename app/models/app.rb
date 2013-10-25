class App < ActiveRecord::Base

  has_many :app_parent_categories

  has_many :categories,
           :through => :app_parent_categories

  belongs_to :parent_category,
             :foreign_key => :category_id,
             :class_name => 'Category'

end
