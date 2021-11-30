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

ActiveRecord::Schema.define(version: 2021_11_30_003026) do

  create_table "applicants", force: :cascade do |t|
    t.boolean "approved", default: false
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "My_id"
    t.integer "Event_id"
    t.index ["Event_id"], name: "index_applicants_on_Event_id"
    t.index ["My_id"], name: "index_applicants_on_My_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "my_id"
    t.integer "Target_id"
    t.integer "Event_id"
    t.index ["Event_id"], name: "index_comments_on_Event_id"
    t.index ["Target_id"], name: "index_comments_on_Target_id"
    t.index ["my_id"], name: "index_comments_on_my_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.integer "min_age"
    t.integer "max_age"
    t.text "note"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "participant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Location_id"
    t.integer "User_id"
    t.integer "Sport_id"
    t.index ["Location_id"], name: "index_events_on_Location_id"
    t.index ["Sport_id"], name: "index_events_on_Sport_id"
    t.index ["User_id"], name: "index_events_on_User_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "country"
    t.string "region"
    t.string "county"
    t.string "address"
    t.boolean "available", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.integer "phone_number"
    t.integer "age"
    t.text "note"
    t.string "tag"
    t.integer "role"
    t.boolean "vip", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Location_id"
    t.index ["Location_id"], name: "index_users_on_Location_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
