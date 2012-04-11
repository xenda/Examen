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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120411131420) do

  create_table "agreements", :force => true do |t|
    t.datetime "starting_at"
    t.datetime "ending_at"
    t.string   "kind"
    t.integer  "quantity"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "client_id"
    t.integer  "package_id"
  end

  create_table "allowed_packages", :force => true do |t|
    t.integer  "client_id"
    t.integer  "package_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.integer  "max_allowed_packages"
    t.string   "allowed_packages_kind"
    t.text     "pickup_address"
    t.text     "delivery_address"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "package_items", :force => true do |t|
    t.integer  "package_id"
    t.string   "state"
    t.integer  "agreement_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "packages", :force => true do |t|
    t.string   "kind"
    t.integer  "capacity"
    t.string   "dimensions"
    t.string   "material"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "code"
  end

end
