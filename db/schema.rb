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

ActiveRecord::Schema.define(version: 2022_02_24_143553) do

  create_table "cancadidates", force: :cascade do |t|
    t.string "name"
    t.string "party"
    t.integer "age"
    t.text "policy"
    t.integer "votes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "policy"
    t.text "text"
    t.integer "votes", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "names", force: :cascade do |t|
    t.integer "age"
    t.string "policy"
    t.text "text"
    t.integer "votes", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vote_logs", force: :cascade do |t|
    t.integer "candidate_id", null: false
    t.string "ip_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_vote_logs_on_candidate_id"
  end

  add_foreign_key "vote_logs", "candidates"
end
