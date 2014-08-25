class AddDealershipIdToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :dealership_id, :integer
  end
end
