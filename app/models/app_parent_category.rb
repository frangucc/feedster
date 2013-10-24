class AppParentCategory < ActiveRecord::Base

  belongs_to :category

  belongs_to :app

end
