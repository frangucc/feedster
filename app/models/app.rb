class App < ActiveRecord::Base

  has_many :app_parent_categories

  has_many :categories,
           :through => :app_parent_categories

end
