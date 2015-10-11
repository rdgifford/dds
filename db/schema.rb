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

ActiveRecord::Schema.define(version: 20150917040029) do

  create_table "rides", force: :cascade do |t|
    t.string   "name"
    t.string   "sid"
    t.string   "phone"
    t.integer  "passengers"
    t.string   "origin"
    t.string   "destination"
    t.boolean  "completion"
    t.integer  "shift_vehicle_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "rides", ["shift_vehicle_id"], name: "index_rides_on_shift_vehicle_id"

  create_table "shift_vehicles", force: :cascade do |t|
    t.integer  "start_mileage"
    t.integer  "end_mileage"
    t.decimal  "start_gas"
    t.decimal  "end_gas"
    t.integer  "shift_id"
    t.integer  "vehicle_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "shift_vehicles", ["shift_id"], name: "index_shift_vehicles_on_shift_id"
  add_index "shift_vehicles", ["vehicle_id"], name: "index_shift_vehicles_on_vehicle_id"

  create_table "shifts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_shifts", force: :cascade do |t|
    t.integer  "position_id"
    t.integer  "shift_id"
    t.integer  "user_id"
    t.integer  "shift_vehicle_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "user_shifts", ["shift_id"], name: "index_user_shifts_on_shift_id"
  add_index "user_shifts", ["shift_vehicle_id"], name: "index_user_shifts_on_shift_vehicle_id"
  add_index "user_shifts", ["user_id"], name: "index_user_shifts_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicles", force: :cascade do |t|
    t.integer  "vehicle_number"
    t.string   "model"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
