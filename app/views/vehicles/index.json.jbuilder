json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :dealer_id, :vin, :stock_number, :year, :make, :model, :model_code, :trim, :bodystyle, :transmission, :drive_train, :doors, :exterior_color, :interior_color, :truck_cab, :truck_bed, :msrp, :invoice, :price, :wholesale_price, :retail_price, :sale_price, :mileage, :comments, :options, :images, :type, :certified, :engine, :engine_size, :fule, :dealership, :dealership_address1, :dealership_address_2, :dealership_city, :dealership_state, :dealership_postalcode, :dealership_country, :dealership_phone, :dealership_url
  json.url vehicle_url(vehicle, format: :json)
end
