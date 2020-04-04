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

ActiveRecord::Schema.define(version: 2020_04_04_185828) do

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.integer "trip_id"
    t.text "transport_to"
    t.text "transport_from"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.boolean "paid"
    t.string "location"
    t.datetime "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "destination_id"
    t.datetime "date"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.boolean "paid"
    t.datetime "checkin"
    t.datetime "checkout"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "destination_id"
    t.string "location"
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.datetime "start"
    t.datetime "end"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
