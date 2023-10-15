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

ActiveRecord::Schema[7.0].define(version: 2023_10_14_060711) do
  create_table "contacts", force: :cascade do |t|
    t.string "tipo", null: false
    t.string "valor", null: false
    t.integer "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"person\", \"valor\"", name: "index_contacts_on_person_and_valor", unique: true
    t.index ["person_id"], name: "index_contacts_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "nome", null: false
    t.integer "idade", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contacts", "people"
end
