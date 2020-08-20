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

ActiveRecord::Schema.define(version: 2020_08_20_084907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lendees", force: :cascade do |t|
    t.bigint "lender_id", null: false
    t.string "amt_owed"
    t.string "payment_dates"
    t.string "phone_number"
    t.string "email"
    t.string "payment_due_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["lender_id"], name: "index_lendees_on_lender_id"
  end

  create_table "lenders", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar"
    t.bigint "lendee_id"
    t.index ["lendee_id"], name: "index_lenders_on_lendee_id"
  end

  add_foreign_key "lendees", "lenders"
  add_foreign_key "lenders", "lendees"
end
