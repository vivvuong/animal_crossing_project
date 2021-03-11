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

ActiveRecord::Schema.define(version: 2021_03_11_110429) do

  create_table "animals", force: :cascade do |t|
    t.string "animal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hobbies", force: :cascade do |t|
    t.string "hobby"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personalities", force: :cascade do |t|
    t.string "personality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "villagers", force: :cascade do |t|
    t.string "name"
    t.string "icon_image"
    t.string "photo_image"
    t.string "house_image"
    t.integer "animal_id", null: false
    t.integer "gender_id", null: false
    t.integer "personality_id", null: false
    t.integer "hobby_id", null: false
    t.string "birthday"
    t.string "catchphrase"
    t.string "favorite_song"
    t.string "favorite_saying"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_id"], name: "index_villagers_on_animal_id"
    t.index ["gender_id"], name: "index_villagers_on_gender_id"
    t.index ["hobby_id"], name: "index_villagers_on_hobby_id"
    t.index ["personality_id"], name: "index_villagers_on_personality_id"
  end

  add_foreign_key "villagers", "animals"
  add_foreign_key "villagers", "genders"
  add_foreign_key "villagers", "hobbies"
  add_foreign_key "villagers", "personalities"
end
