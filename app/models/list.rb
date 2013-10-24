class List < ActiveRecord::Base

  has_many :list_items

  def br_separated_items
    list_items.map(&:value).join('<br />').html_safe
  end

end
