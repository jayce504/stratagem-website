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

ActiveRecord::Schema.define(version: 20180304211211) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_categories", force: :cascade do |t|
    t.integer "client_id"
    t.integer "category_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string  "name"
    t.string  "address"
    t.string  "phone_number"
    t.string  "appointed_retained"
    t.string  "alleged_offenses"
    t.integer "user_id"
    t.date    "created_at"
    t.time    "updated_at"
    t.date    "hearing_dates"
    t.date    "beginning_date"
    t.date    "disposition_date"
    t.float   "time_outside_of_court"
    t.float   "time_in_court"
    t.float   "time_waiting_in_court"
    t.date    "date_of_first_client_interaction"
    t.string  "sentencing_judge"
    t.string  "disposition"
    t.string  "case_outcome"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
  end

end
