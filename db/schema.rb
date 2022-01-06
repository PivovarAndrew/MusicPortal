# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_05_214644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "age_restrictions", force: :cascade do |t|
    t.string "value", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "album_age_restrictions", force: :cascade do |t|
    t.bigint "album_id"
    t.bigint "age_restriction_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["age_restriction_id"], name: "index_album_age_restrictions_on_age_restriction_id"
    t.index ["album_id"], name: "index_album_age_restrictions_on_album_id"
  end

  create_table "album_genres", force: :cascade do |t|
    t.bigint "album_id"
    t.bigint "genre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_album_genres_on_album_id"
    t.index ["genre_id"], name: "index_album_genres_on_genre_id"
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_preview_url"
    t.date "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "countries"
    t.string "main_genre"
    t.string "performer"
    t.string "age_restrictions"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "track_genres", force: :cascade do |t|
    t.bigint "track_id"
    t.bigint "genre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_track_genres_on_genre_id"
    t.index ["track_id"], name: "index_track_genres_on_track_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "source_link"
    t.time "duration"
    t.string "tags"
    t.string "related_genres"
    t.string "preview_picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "album_id"
  end

  create_table "user_albums", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "album_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_user_albums_on_album_id"
    t.index ["user_id"], name: "index_user_albums_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "avatar"
    t.string "name"
    t.string "surname"
    t.string "nickname"
    t.date "date_of_birthday"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "user_profiles", "users"
end
