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

ActiveRecord::Schema.define(version: 2019_11_07_205232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shoe_sizes", force: :cascade do |t|
    t.bigint "shoe_id"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shoe_id"], name: "index_shoe_sizes_on_shoe_id"
  end

  create_table "shoes", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.integer "price"
    t.boolean "latest", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "user_shoes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "shoe_size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shoe_size_id"], name: "index_user_shoes_on_shoe_size_id"
    t.index ["user_id"], name: "index_user_shoes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "shoe_sizes", "shoes"
  add_foreign_key "user_shoes", "shoe_sizes"
  add_foreign_key "user_shoes", "users"
end
