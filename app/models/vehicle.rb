class Vehicle < ActiveRecord::Base
require 'smarter_csv'

default_scope { where("type = 'Used' AND not year = 2015") }
# default_scope { not(year: 2015) }
# belongs_to :dealership

# Necessary for using the "type column"
self.inheritance_column = nil

  def year_make_model_trim
    [self.year, self.make, self.model, self.trim].join(" ")
  end

  def self.import(file)
    n = SmarterCSV.process(file.path, {file_encoding: 'iso-8859-1', row_sep: :auto, :key_mapping => {:id => :original_id}}) do |array|

      vehicle = Vehicle.where(original_id: array.first[:original_id])
      original_ids << array.first[:original_id]
      if vehicle.count == 1
        vehicle.first.update_attributes(array.first)
      elsif vehicle.count > 1
        raise "There is more than 1 vehicle with the original_id of #{array.first[:original_id]}"
      else
        #attempt to avoid a typing error by converting the price to an integer before creating
        array[:price] = array[:price].to_i
        array[:mileage] = array[:mileage].to_i
        Vehicle.create( array.first )
      end
    end
    Vehicle.where('original_id not in (?)',original_ids).delete_all
  end
end
