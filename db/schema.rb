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

ActiveRecord::Schema.define(version: 20161007194346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shows", force: :cascade do |t|
    t.date     "date"
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date"], name: "index_shows_on_date", unique: true, using: :btree
  end

  create_table "song_aliases", force: :cascade do |t|
    t.integer  "song_id"
    t.string   "alias"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.string   "altName"
    t.string   "album"
    t.string   "coveredArtist"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "shortName"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
