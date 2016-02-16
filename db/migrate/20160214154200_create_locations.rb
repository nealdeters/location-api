class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.string :street_name
      t.string :street_address
      t.string :secondary_address
      t.string :building_number
      t.string :zipcode
      t.string :country

      t.timestamps
    end
  end
end
