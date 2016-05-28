# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160528072103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.integer  "screen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["screen_id"], name: "index_areas_on_screen_id", using: :btree
  end

  create_table "conditions", force: :cascade do |t|
    t.integer  "field_type_id"
    t.text     "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["field_type_id"], name: "index_conditions_on_field_type_id", using: :btree
  end

  create_table "custom_heads", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custom_patterns", force: :cascade do |t|
    t.integer  "custom_head_id"
    t.integer  "condition_id"
    t.integer  "result_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["condition_id"], name: "index_custom_patterns_on_condition_id", using: :btree
    t.index ["custom_head_id"], name: "index_custom_patterns_on_custom_head_id", using: :btree
    t.index ["result_id"], name: "index_custom_patterns_on_result_id", using: :btree
  end

  create_table "field_types", force: :cascade do |t|
    t.string   "name"
    t.string   "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "section_id"
    t.integer  "field_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["field_type_id"], name: "index_items_on_field_type_id", using: :btree
    t.index ["section_id"], name: "index_items_on_section_id", using: :btree
  end

  create_table "results", force: :cascade do |t|
    t.integer  "field_type_id"
    t.text     "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["field_type_id"], name: "index_results_on_field_type_id", using: :btree
  end

  create_table "screens", force: :cascade do |t|
    t.string   "name"
    t.boolean  "copy_flag"
    t.text     "remark"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_screens_on_user_id", using: :btree
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_sections_on_area_id", using: :btree
  end

  create_table "test_patterns", force: :cascade do |t|
    t.integer  "condition_id"
    t.integer  "result_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "item_id"
    t.index ["condition_id"], name: "index_test_patterns_on_condition_id", using: :btree
    t.index ["item_id"], name: "index_test_patterns_on_item_id", using: :btree
    t.index ["result_id"], name: "index_test_patterns_on_result_id", using: :btree
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "areas", "screens"
  add_foreign_key "conditions", "field_types"
  add_foreign_key "custom_patterns", "conditions"
  add_foreign_key "custom_patterns", "custom_heads"
  add_foreign_key "custom_patterns", "results"
  add_foreign_key "items", "field_types"
  add_foreign_key "items", "sections"
  add_foreign_key "results", "field_types"
  add_foreign_key "screens", "users"
  add_foreign_key "sections", "areas"
  add_foreign_key "test_patterns", "conditions"
  add_foreign_key "test_patterns", "results"
end
