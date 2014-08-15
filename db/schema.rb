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

ActiveRecord::Schema.define(version: 20140815193923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

end
