class ChangeVehiclePriceToInt < ActiveRecord::Migration
  def change
    change_column :vehicles, :price, 'integer USING CAST(price AS integer)'
    #execute 'ALTER TABLE vehicles ALTER COLUMN price TYPE integer USING (price::integer)'
    #change_column :vehicles, :price, :integer
  end
end
