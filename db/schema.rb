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

ActiveRecord::Schema.define(version: 2021_05_03_123539) do

  create_table "clients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "client_number", limit: 255, null: false
    t.string "company", limit: 255
    t.string "company_kana", limit: 255
    t.string "last_name", limit: 255
    t.string "first_name", limit: 255
    t.string "last_name_kana", limit: 255
    t.string "first_name_kana", limit: 255
    t.string "phone_number", limit: 255
    t.string "phone_number_2", limit: 255
    t.string "postal_code", limit: 255
    t.string "prefecture", limit: 255
    t.string "municipalities", limit: 255
    t.string "block_number", limit: 255
    t.string "building", limit: 255
    t.string "category", limit: 255
    t.string "PIC", limit: 255
    t.string "details", limit: 255
    t.date "start_date"
    t.string "remark", limit: 255
    t.string "staff", limit: 255, null: false
    t.boolean "done_flag", default: false, null: false
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "updated_at"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "src"
    t.bigint "clients_id", null: false
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "updated_at"
    t.index ["clients_id"], name: "index_images_on_clients_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_users_on_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

  add_foreign_key "images", "clients", column: "clients_id"
end
