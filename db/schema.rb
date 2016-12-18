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

ActiveRecord::Schema.define(version: 20161218010448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "Nombre"
    t.integer  "Padre"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.index ["category_id"], name: "index_categories_on_category_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "Rut"
    t.string   "Nombre"
    t.string   "Apellido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "Nuevo_Precio"
    t.date     "Fecha_ini"
    t.date     "fecha_fin"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "product_id"
    t.index ["product_id"], name: "index_offers_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "Nombre"
    t.text     "Descripcion"
    t.string   "Modelo"
    t.integer  "Precio"
    t.integer  "Stock"
    t.string   "Imagen"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "category_id"
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "Codigo"
    t.date     "Fecha"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "product_id"
    t.integer  "customer_id"
    t.index ["customer_id"], name: "index_reservations_on_customer_id", using: :btree
    t.index ["product_id"], name: "index_reservations_on_product_id", using: :btree
  end

  create_table "sales", force: :cascade do |t|
    t.date     "Fecha"
    t.integer  "Cantidad"
    t.integer  "Total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "product_id"
    t.index ["product_id"], name: "index_sales_on_product_id", using: :btree
    t.index ["user_id"], name: "index_sales_on_user_id", using: :btree
  end

  create_table "types", force: :cascade do |t|
    t.string   "Descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "Nombre"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "type_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["type_id"], name: "index_users_on_type_id", using: :btree
  end

  add_foreign_key "categories", "categories"
  add_foreign_key "offers", "products"
  add_foreign_key "products", "categories"
  add_foreign_key "reservations", "customers"
  add_foreign_key "reservations", "products"
  add_foreign_key "sales", "products"
  add_foreign_key "sales", "users"
  add_foreign_key "users", "types"
end
