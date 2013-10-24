class Attachment < ActiveRecord::Base

  belongs_to :item

  has_attached_file :file

end
