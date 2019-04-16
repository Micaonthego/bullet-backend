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

ActiveRecord::Schema.define(version: 2019_04_15_152811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.string "priorities"
    t.string "gratitude"
    t.string "accomplishments"
    t.string "improvements"
    t.date "date"
    t.string "img_url", default: "https://images.pexels.com/photos/1985169/pexels-photo-1985169.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    t.bigint "user_id", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "aspiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end