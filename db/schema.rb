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

ActiveRecord::Schema[7.1].define(version: 2024_07_04_043105) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "access_token", null: false
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_token"], name: "index_api_keys_on_access_token", unique: true
    t.index ["user_id"], name: "index_api_keys_on_user_id"
  end

  create_table "game_lists", force: :cascade do |t|
    t.string "title", null: false
    t.string "content", null: false
    t.integer "game_type", default: 0, null: false
    t.integer "level", null: false
    t.integer "category", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quiz_answers", force: :cascade do |t|
    t.bigint "quiz_choice_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_choice_id"], name: "index_quiz_answers_on_quiz_choice_id"
    t.index ["user_id"], name: "index_quiz_answers_on_user_id"
  end

  create_table "quiz_choices", force: :cascade do |t|
    t.string "content"
    t.boolean "is_correct"
    t.bigint "quiz_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_quiz_choices_on_quiz_id"
  end

  create_table "quiz_results", force: :cascade do |t|
    t.integer "select_answer", null: false
    t.bigint "quiz_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_quiz_results_on_quiz_id"
    t.index ["user_id"], name: "index_quiz_results_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_list_id"
    t.index ["game_list_id"], name: "index_quizzes_on_game_list_id"
  end

  create_table "typing_games", force: :cascade do |t|
    t.string "content"
    t.bigint "game_list_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_list_id"], name: "index_typing_games_on_game_list_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", null: false
    t.string "avatar"
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "api_keys", "users"
  add_foreign_key "quiz_answers", "quiz_choices"
  add_foreign_key "quiz_answers", "users"
  add_foreign_key "quiz_choices", "quizzes"
  add_foreign_key "quiz_results", "quizzes"
  add_foreign_key "quiz_results", "users"
  add_foreign_key "quizzes", "game_lists"
  add_foreign_key "typing_games", "game_lists"
end
