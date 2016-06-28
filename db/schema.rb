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

ActiveRecord::Schema.define(version: 20160626115816) do

  create_table "decision1s", force: :cascade do |t|
    t.string   "d5"
    t.string   "d6"
    t.integer  "decision_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "decision1s", ["decision_id"], name: "index_decision1s_on_decision_id"

  create_table "decisions", force: :cascade do |t|
    t.string   "d1"
    t.string   "d2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decisions1s", force: :cascade do |t|
    t.string   "d3"
    t.string   "d4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
