class AddLocationToDealership < ActiveRecord::Migration
  def change
    add_column :dealerships, :location, :int
  end
end
