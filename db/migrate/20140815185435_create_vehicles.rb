class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :dealer_id
      t.string :vin
      t.string :stock_number
      t.integer :year
      t.string :make
      t.string :model
      t.string :model_code
      t.string :trim
      t.string :bodystyle
      t.string :transmission
      t.string :drive_train
      t.string :doors
      t.string :exterior_color
      t.string :interior_color
      t.string :truck_cab
      t.string :truck_bed
      t.string :msrp
      t.string :invoice
      t.string :price
      t.string :wholesale_price
      t.string :retail_price
      t.string :sale_price
      t.string :mileage
      t.text :comments
      t.text :options
      t.text :images
      t.string :type
      t.string :certified
      t.string :engine
      t.string :engine_size
      t.string :fule
      t.string :dealership
      t.string :dealership_address1
      t.string :dealership_address_2
      t.string :dealership_city
      t.string :dealership_state
      t.string :dealership_postalcode
      t.string :dealership_country
      t.string :dealership_phone
      t.string :dealership_url

      t.timestamps
    end
  end
end
