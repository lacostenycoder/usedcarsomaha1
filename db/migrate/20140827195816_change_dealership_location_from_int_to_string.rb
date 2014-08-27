class ChangeDealershipLocationFromIntToString < ActiveRecord::Migration
  def change
    change_column :dealerships, :location, :string
  end
end
