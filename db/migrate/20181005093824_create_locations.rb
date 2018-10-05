class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :postal_code
      t.string :city
      t.string :state_province
      t.string :country_id

      t.timestamps
    end
  end
end
