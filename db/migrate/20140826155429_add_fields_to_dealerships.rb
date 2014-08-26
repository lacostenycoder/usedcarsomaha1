class AddFieldsToDealerships < ActiveRecord::Migration
  def change
    add_column :dealerships, :street_address_1, :string
    add_column :dealerships, :street_address_2, :string
    add_column :dealerships, :city, :string
    add_column :dealerships, :state, :string
    add_column :dealerships, :zip_code, :string
  end
end
