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

ActiveRecord::Schema.define(version: 2019_11_16_154430) do

  create_table "items", primary_key: "ITEM_NUMBER", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "ITEM_NAME", null: false
    t.integer "LOCATION_ID", null: false
    t.integer "ITEM_AVAILABLE", null: false
    t.integer "ITEM_INUSE", null: false
    t.virtual "ITEM_TOTAL", type: :integer, as: "(`ITEM_AVAILABLE` + `ITEM_INUSE`)"
    t.string "DESCRIPTION"
    t.index ["ITEM_NUMBER"], name: "ITEM_NUMBER", unique: true
    t.index ["LOCATION_ID"], name: "LOCATION_ID"
  end

  create_table "locations", primary_key: "LOCATION_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "LOCATION_NAME", null: false
    t.string "LOCATION_DESC"
    t.index ["LOCATION_ID"], name: "LOCATION_ID", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "uName"
    t.string "fName"
    t.string "lName"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "items", "locations", column: "LOCATION_ID", primary_key: "LOCATION_ID", name: "items_ibfk_1"
end
