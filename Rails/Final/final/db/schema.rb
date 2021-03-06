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

ActiveRecord::Schema.define(version: 20170603195751) do

  create_table "planeflighs", force: :cascade do |t|
    t.string   "airline"
    t.integer  "number"
    t.string   "fromcity"
    t.string   "tocity"
    t.integer  "plane_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plane_id"], name: "index_planeflighs_on_plane_id"
  end

  create_table "planeflights", force: :cascade do |t|
    t.string   "airline"
    t.integer  "number"
    t.string   "fromcity"
    t.string   "tocity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "plane_id"
    t.index ["plane_id"], name: "index_planeflights_on_plane_id"
  end

  create_table "planes", force: :cascade do |t|
    t.string   "manufacturer"
    t.string   "model"
    t.integer  "seatts"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
