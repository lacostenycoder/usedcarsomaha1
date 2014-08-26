# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140826160340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dealerships", force: true do |t|
    t.string   "name"
    t.string   "website_url"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.integer  "dealership_id"
    t.string   "phone_number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicles", force: true do |t|
    t.string   "dealer_id"
    t.string   "vin"
    t.string   "stockno"
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "model_code"
    t.string   "trim"
    t.string   "bodystyle"
    t.string   "transmission"
    t.string   "drive_train"
    t.string   "doors"
    t.string   "exterior_color"
    t.string   "interior_color"
    t.string   "truck_cab"
    t.string   "truck_bed"
    t.string   "msrp"
    t.string   "invoice"
    t.string   "price"
    t.string   "wholesale_price"
    t.string   "retail_price"
    t.string   "sale_price"
    t.string   "mileage"
    t.text     "comments"
    t.text     "options"
    t.text     "images"
    t.string   "type"
    t.string   "certified"
    t.string   "engine"
    t.string   "engine_size"
    t.string   "fuel"
    t.string   "dealership"
    t.string   "dealership_address1"
    t.string   "dealership_address2"
    t.string   "dealership_city"
    t.string   "dealership_state"
    t.string   "dealership_postalcode"
    t.string   "dealership_country"
    t.string   "dealership_phone"
    t.string   "dealership_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dealership_id"
    t.string   "original_id"
  end

end
