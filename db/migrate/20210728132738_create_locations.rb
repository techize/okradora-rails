class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :location_name
      t.string :unit
      t.string :street1
      t.string :street2
      t.string :town
      t.string :county
      t.string :country
      t.string :postcode
       t.timestamps
    end
  end
end
