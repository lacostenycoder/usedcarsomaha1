class Vehicle < ActiveRecord::Base
require 'smarter_csv'

# Necessary for using the "type column"
self.inheritance_column = nil

  def self.import(file)
    # vehicles = SmarterCSV.process(file.path)
    # f = File.open(file.path, "r:bom|utf-8")
    n = SmarterCSV.process(file.path, {row_sep: :auto, :key_mapping => {:id => nil, :old_row_name => :new_name}}) do |array|
      # we're passing a block in, to process each resulting hash / =row (the block takes array of hashes)
      # when chunking is not enabled, there is only one hash in each array
      Vehicle.create( array.first )
    end
    # vehicles
    # file = File.open(file.path, "r:ISO-8859-1")
    # CSV.foreach(file, headers: true) do |row|

      # vehicle_hash = row.to_hash.except(:id) # exclude the price field
      # vehicle_hash.except!(:id)
      # vehicle_hash[:id] = nil
      # product = Product.where(id: product_hash["id"])

      # if product.count == 1
        # product.first.update_attributes(product_hash)
      # else
        # Vehicle.create!(vehicle_hash)
      # end # end if !product.nil?
    # end # end CSV.foreach
  end # end self.import(file
end
