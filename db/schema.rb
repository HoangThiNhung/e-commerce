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

ActiveRecord::Schema.define(version: 20161107074738) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "left_node"
    t.integer  "right_node"
    t.integer  "depth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
  end

  create_table "colors", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id", "color"], name: "index_colors_on_product_id_and_color", unique: true
    t.index ["product_id"], name: "index_colors_on_product_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id", "user_id"], name: "index_favorites_on_product_id_and_user_id", unique: true
    t.index ["product_id"], name: "index_favorites_on_product_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.string   "name"
    t.float    "price"
    t.integer  "quatity"
    t.string   "color"
    t.string   "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
    t.index ["product_id"], name: "index_order_details_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "order_date"
    t.datetime "ship_date"
    t.integer  "payment"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_date"], name: "index_orders_on_order_date"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "uuid"
    t.string   "name"
    t.float    "price"
    t.text     "description"
    t.text     "promotion"
    t.integer  "quanlity"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["name"], name: "index_products_on_name"
    t.index ["price"], name: "index_products_on_price"
    t.index ["uuid"], name: "index_products_on_uuid", unique: true
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.float    "rate"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id", "user_id"], name: "index_ratings_on_product_id_and_user_id", unique: true
    t.index ["product_id"], name: "index_ratings_on_product_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id", "size"], name: "index_sizes_on_product_id_and_size", unique: true
    t.index ["product_id"], name: "index_sizes_on_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "telephone"
    t.string   "address"
    t.string   "avatar"
    t.boolean  "admin"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
