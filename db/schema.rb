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

ActiveRecord::Schema.define(version: 20150307103111) do

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "items", force: :cascade do |t|
    t.integer "item_type_cd", null: false
    t.datetime "created_at", null: false
    t.boolean "deleted", default: false, null: false
    t.boolean "dead", default: false, null: false
    t.string "author"
    t.string "title"
    t.text "url"
    t.text "text"
    t.integer "points"
    t.integer "parent_id"
    t.integer "story_id"
    t.datetime "updated_at"
    t.boolean "front_page"
    t.index ["author"], name: "index_items_on_author"
    t.index ["dead"], name: "index_items_on_dead"
    t.index ["deleted"], name: "index_items_on_deleted"
    t.index ["front_page"], name: "index_items_on_front_page"
    t.index ["item_type_cd"], name: "index_items_on_item_type_cd"
    t.index ["parent_id"], name: "index_items_on_parent_id"
    t.index ["story_id"], name: "index_items_on_story_id"
    t.index ["updated_at"], name: "index_items_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.text "about"
    t.integer "karma"
    t.datetime "created_at", null: false
    t.float "avg"
    t.integer "delay"
    t.integer "submitted", default: 0, null: false
    t.datetime "updated_at"
    t.index ["updated_at"], name: "index_users_on_updated_at"
    t.index ["username"], name: "index_users_on_username"
  end

end
