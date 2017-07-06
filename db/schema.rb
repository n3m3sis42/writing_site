# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 8) do

  create_table "arcs", force: :cascade do |t|
    t.string  "title"
    t.integer "arc_number"
    t.string  "description"
  end

  create_table "character_locations", force: :cascade do |t|
    t.integer "character_id"
    t.integer "location_id"
    t.string  "location_type"
  end

  create_table "character_scenes", force: :cascade do |t|
    t.integer "character_id"
    t.integer "scene_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string  "first_name"
    t.string  "middle_name"
    t.string  "last_name"
    t.string  "goes_by"
    t.string  "birth_date"
    t.integer "height_feet"
    t.integer "height_inches"
    t.integer "weight"
    t.string  "eye_color"
    t.string  "hair_color"
    t.string  "skin_color"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "locations", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.integer "country_id"
  end

  create_table "scene_locations", force: :cascade do |t|
    t.integer "scene_id"
    t.integer "location_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.text    "notes"
    t.integer "scene_number"
    t.integer "arc_id"
  end

end
