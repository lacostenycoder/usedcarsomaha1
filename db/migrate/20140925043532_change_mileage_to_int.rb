class ChangeMileageToInt < ActiveRecord::Migration
  def change
    #change_column :vehicles, :mileage, :integer
    change_column :vehicles, :mileage, 'integer USING CAST(mileage AS integer)'
  end
end
