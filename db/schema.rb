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

ActiveRecord::Schema.define(version: 20141030135449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: true do |t|
    t.integer  "day_of_week"
    t.time     "started_time"
    t.time     "ended_time"
    t.integer  "waiter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "availabilities", ["waiter_id"], name: "index_availabilities_on_waiter_id", using: :btree

  create_table "event_positions", force: true do |t|
    t.decimal  "allowance"
    t.integer  "event_id"
    t.integer  "waiter_id"
    t.integer  "waiter_skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_positions", ["event_id"], name: "index_event_positions_on_event_id", using: :btree
  add_index "event_positions", ["waiter_id"], name: "index_event_positions_on_waiter_id", using: :btree
  add_index "event_positions", ["waiter_skill_id"], name: "index_event_positions_on_waiter_skill_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "title"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  add_index "events", ["client_id"], name: "index_events_on_client_id", using: :btree

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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "staff_number"
    t.string   "address"
    t.string   "telephone_number"
    t.string   "type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_waiter_skills", id: false, force: true do |t|
    t.integer "waiter_id"
    t.integer "waiter_skill_id"
  end

  add_index "users_waiter_skills", ["waiter_id"], name: "index_users_waiter_skills_on_waiter_id", using: :btree
  add_index "users_waiter_skills", ["waiter_skill_id"], name: "index_users_waiter_skills_on_waiter_skill_id", using: :btree

  create_table "waiter_skills", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
