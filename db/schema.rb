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

ActiveRecord::Schema[7.0].define(version: 2023_03_08_144922) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventures", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.string "character_name"
    t.string "difficulty"
    t.boolean "choices"
    t.text "save_adventure"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_adventures_on_character_id"
    t.index ["user_id"], name: "index_adventures_on_user_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "parameters"
    t.string "image_card_url"
    t.string "image_background_card_url"
    t.string "image_background_page_url"
    t.bigint "universe_id", null: false
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["universe_id"], name: "index_characters_on_universe_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "adventure_id", null: false
    t.string "role"
    t.text "content"
    t.integer "prompt_tokens"
    t.integer "completion_tokens"
    t.integer "total_tokens"
    t.bigint "user_id", null: false
    t.string "log"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adventure_id"], name: "index_messages_on_adventure_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "prompts", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universes", force: :cascade do |t|
    t.string "theme"
    t.text "description"
    t.text "parameters"
    t.text "initializer"
    t.string "image_card_url"
    t.string "image_background_url"
    t.string "image_background_loading_url"
    t.string "image_background_play_url"
    t.string "image_loader_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.boolean "admin", default: false, null: false
    t.string "api_token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "adventures", "characters"
  add_foreign_key "adventures", "users"
  add_foreign_key "characters", "universes"
  add_foreign_key "messages", "adventures"
  add_foreign_key "messages", "users"
end
