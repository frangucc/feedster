class RemoveCommanSeparatedValuesFromList < ActiveRecord::Migration
  def change
    remove_column :lists, :comma_separated_items
  end
end
