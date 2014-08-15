class FixAddress2AndStockno < ActiveRecord::Migration
  def change
    rename_column :vehicles, :stock_number, :stockno
    rename_column :vehicles, :dealership_address_2, :dealership_address2
  end
end
