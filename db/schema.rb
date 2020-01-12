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

ActiveRecord::Schema.define(version: 2020_01_12_191531) do

  create_table "abouts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.integer "position"
    t.string "name"
    t.text "bio"
    t.string "img_url"
    t.string "spotify_playlist"
    t.string "fb"
    t.string "insta"
    t.string "twitter"
    t.string "spotify"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cat_editorials", force: :cascade do |t|
    t.integer "catalogue_id"
    t.string "link_url"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catalogue_id"], name: "index_cat_editorials_on_catalogue_id"
  end

  create_table "catalogues", force: :cascade do |t|
    t.string "artist"
    t.string "title"
    t.string "img_url"
    t.text "bio"
    t.integer "position"
    t.string "media"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "editorials", force: :cascade do |t|
    t.integer "artist_id"
    t.string "link_url"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_editorials_on_artist_id"
  end

  create_table "homes", force: :cascade do |t|
    t.text "intro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songwriter_editorials", force: :cascade do |t|
    t.integer "songwriter_id"
    t.string "link_url"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["songwriter_id"], name: "index_songwriter_editorials_on_songwriter_id"
  end

  create_table "songwriters", force: :cascade do |t|
    t.integer "position"
    t.string "name"
    t.text "bio"
    t.string "img_url"
    t.string "spotify_playlist"
    t.string "fb"
    t.string "insta"
    t.string "twitter"
    t.string "spotify"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
