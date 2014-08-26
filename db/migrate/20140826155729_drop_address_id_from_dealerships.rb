class DropAddressIdFromDealerships < ActiveRecord::Migration
  def change
    remove_column :dealerships, :address_id
  end
end
