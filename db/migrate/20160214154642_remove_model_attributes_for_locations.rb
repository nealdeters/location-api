class RemoveModelAttributesForLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :street_name, :string
    remove_column :locations, :secondary_address, :string
    remove_column :locations, :building_number, :string
  end
end
