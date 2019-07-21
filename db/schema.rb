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

ActiveRecord::Schema.define(version: 2019_07_21_055700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.integer "water_interval"
    t.string "water_amount"
    t.datetime "last_watered_time"
    t.integer "user_id"
    t.integer "species_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "species", force: :cascade do |t|
    t.string "common_name"
    t.string "scientific_name"
    t.integer "default_water_interval"
    t.string "default_water_amount"
    t.string "heat_preference"
    t.string "light_preference"
    t.string "toxicity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
  end

end
