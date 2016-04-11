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

ActiveRecord::Schema.define(version: 20160410221708) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "hike_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "username"
  end

  add_index "comments", ["hike_id"], name: "index_comments_on_hike_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "downvotes", force: :cascade do |t|
    t.integer  "hike_id"
    t.integer  "user_id"
    t.integer  "vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "downvotes", ["hike_id"], name: "index_downvotes_on_hike_id", using: :btree
  add_index "downvotes", ["user_id"], name: "index_downvotes_on_user_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "owner"
  end

  create_table "hikes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "difficulty"
    t.float    "distance"
    t.integer  "likes",          default: 0
    t.integer  "dislikes",       default: 0
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "upvote_id"
    t.integer  "downvote_id"
  end

  add_index "hikes", ["downvote_id"], name: "index_hikes_on_downvote_id", using: :btree
  add_index "hikes", ["upvote_id"], name: "index_hikes_on_upvote_id", using: :btree
  add_index "hikes", ["user_id"], name: "index_hikes_on_user_id", using: :btree

  create_table "upvotes", force: :cascade do |t|
    t.integer  "hike_id"
    t.integer  "user_id"
    t.integer  "vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "upvotes", ["hike_id"], name: "index_upvotes_on_hike_id", using: :btree
  add_index "upvotes", ["user_id"], name: "index_upvotes_on_user_id", using: :btree

  create_table "user_groups", force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  add_index "user_groups", ["group_id"], name: "index_user_groups_on_group_id", using: :btree
  add_index "user_groups", ["user_id"], name: "index_user_groups_on_user_id", using: :btree

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
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "comments", "hikes"
  add_foreign_key "comments", "users"
  add_foreign_key "downvotes", "hikes"
  add_foreign_key "downvotes", "users"
  add_foreign_key "hikes", "downvotes"
  add_foreign_key "hikes", "upvotes"
  add_foreign_key "hikes", "users"
  add_foreign_key "upvotes", "hikes"
  add_foreign_key "upvotes", "users"
  add_foreign_key "user_groups", "groups"
  add_foreign_key "user_groups", "users"
end
