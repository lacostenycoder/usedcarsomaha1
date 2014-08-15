class FixFuelTypo < ActiveRecord::Migration
  def change
    rename_column :vehicles, :fule, :fuel
  end
end
