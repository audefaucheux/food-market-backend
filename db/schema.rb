# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_05_150138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_truck_cuisines", force: :cascade do |t|
    t.bigint "food_truck_id", null: false
    t.bigint "cuisine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cuisine_id"], name: "index_food_truck_cuisines_on_cuisine_id"
    t.index ["food_truck_id"], name: "index_food_truck_cuisines_on_food_truck_id"
  end

  create_table "food_trucks", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "twitter_account"
    t.string "description"
    t.string "profile_picture"
    t.boolean "archived", default: false
    t.index ["user_id"], name: "index_food_trucks_on_user_id"
  end

  create_table "markets", force: :cascade do |t|
    t.string "name"
    t.string "address_1"
    t.string "address_2"
    t.string "postcode"
    t.string "town"
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedule_days", force: :cascade do |t|
    t.date "date"
    t.string "from_time"
    t.string "to_time"
    t.boolean "available"
    t.bigint "market_id", null: false
    t.bigint "food_truck_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_truck_id"], name: "index_schedule_days_on_food_truck_id"
    t.index ["market_id"], name: "index_schedule_days_on_market_id"
  end

  create_table "schedule_recurrences", force: :cascade do |t|
    t.string "from_time"
    t.string "to_time"
    t.bigint "market_id", null: false
    t.bigint "food_truck_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "day_num"
    t.index ["food_truck_id"], name: "index_schedule_recurrences_on_food_truck_id"
    t.index ["market_id"], name: "index_schedule_recurrences_on_market_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "food_truck_cuisines", "cuisines"
  add_foreign_key "food_truck_cuisines", "food_trucks"
  add_foreign_key "food_trucks", "users"
  add_foreign_key "schedule_days", "food_trucks"
  add_foreign_key "schedule_days", "markets"
  add_foreign_key "schedule_recurrences", "food_trucks"
  add_foreign_key "schedule_recurrences", "markets"
end
