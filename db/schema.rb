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

ActiveRecord::Schema.define(version: 2021_05_03_114325) do

  create_table "clients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "client_number", null: false
    t.string "company"
    t.string "company_kana"
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "phone_number"
    t.string "phone_number_2"
    t.string "postal_code"
    t.string "prefecture"
    t.string "municipalities"
    t.string "block_number"
    t.string "building"
    t.string "category"
    t.string "PIC"
    t.string "details"
    t.date "start_date"
    t.string "remark"
    t.string "staff", null: false
    t.boolean "done_flag", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "src"
    t.bigint "clients_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clients_id"], name: "index_images_on_clients_id"
  end

  add_foreign_key "images", "clients", column: "clients_id"
end
