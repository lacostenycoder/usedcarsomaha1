class Vehicle < ActiveRecord::Base
require 'smarter_csv'

# Necessary for using the "type column"
self.inheritance_column = nil

  def year_make_model
    [self.year, self.make, self.model].join(" ")
  end

  def self.import(file)
    n = SmarterCSV.process(file.path, {file_encoding: 'iso-8859-1', row_sep: :auto, :key_mapping => {:id => :original_id}}) do |array|

      vehicle = Vehicle.where(original_id: array.first[:original_id])

      if vehicle.count == 1
        vehicle.first.update_attributes(array.first)
      elsif vehicle.count > 1
        raise "There is more than 1 vehicle with the original_id of #{array.first[:original_id]}"
      else
        Vehicle.create( array.first )
      end

    end
  end
end
