class AddOriginalIdToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :original_id, :string
  end
end
