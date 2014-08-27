class AddContactFieldsToDealership < ActiveRecord::Migration
  def change
    add_column :dealerships, :contact_1_first_name, :string
    add_column :dealerships, :contact_1_last_name, :string
    add_column :dealerships, :contact_1_title, :string
    add_column :dealerships, :contact_1_email, :string
    add_column :dealerships, :contact_1_phone_number, :string
    add_column :dealerships, :contact_2_first_name, :string
    add_column :dealerships, :contact_2_last_name, :string
    add_column :dealerships, :contact_2_title, :string
    add_column :dealerships, :contact_2_email, :string
    add_column :dealerships, :contact_2_phone_number, :string
  end
end
