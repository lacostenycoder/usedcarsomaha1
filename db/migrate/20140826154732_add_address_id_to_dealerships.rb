class AddAddressIdToDealerships < ActiveRecord::Migration
  def change
    add_column :dealerships, :address_id, :int
  end
end
