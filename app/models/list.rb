class List < ActiveRecord::Base

  def list_items
    comma_separated_items.split(',').map(&:strip)
  end

end
