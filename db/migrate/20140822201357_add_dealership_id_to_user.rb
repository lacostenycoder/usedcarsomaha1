class AddDealershipIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :dealership_id, :int
  end
end
