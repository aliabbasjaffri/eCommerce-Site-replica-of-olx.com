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

ActiveRecord::Schema.define(version: 20150425182848) do

  create_table "ads", force: :cascade do |t|
    t.integer  "user_id",             limit: 4
    t.string   "title",               limit: 255,   null: false
    t.string   "category",            limit: 255,   null: false
    t.text     "description",         limit: 65535
    t.string   "priceRange",          limit: 255,   null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "ads", ["user_id"], name: "index_ads_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "firstName",           limit: 50,                     null: false
    t.string   "lastName",            limit: 50
    t.string   "email",               limit: 255,                    null: false
    t.integer  "rating",              limit: 4,   default: 0
    t.string   "location",            limit: 255, default: "Lahore"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
    t.string   "password_digest",     limit: 255
  end

end
