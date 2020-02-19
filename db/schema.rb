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

ActiveRecord::Schema.define(version: 20200219161705) do

  create_table "builds", force: :cascade do |t|
    t.string   "buildnumber"
    t.integer  "yfcase_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "builds", ["yfcase_id"], name: "index_builds_on_yfcase_id"

  create_table "lands", force: :cascade do |t|
    t.string   "landnumber"
    t.integer  "yfcase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lands", ["yfcase_id"], name: "index_lands_on_yfcase_id"

  create_table "yfcases", force: :cascade do |t|
    t.string   "casenumber"
    t.string   "address"
    t.string   "landurl"
    t.decimal  "landarea",          precision: 9, scale: 2
    t.string   "landholdingpoint"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "buildurl"
    t.decimal  "buildarea",         precision: 6, scale: 2
    t.string   "buildholdingpoint"
    t.string   "buildtype"
    t.string   "usearea"
    t.date     "auctionday"
    t.string   "auctionlevel"
    t.integer  "floorprice"
    t.integer  "price"
    t.integer  "currentprice"
    t.decimal  "cp",                precision: 4, scale: 3
    t.integer  "suggestedincrease"
    t.integer  "margin"
    t.string   "creditor"
    t.string   "debtor"
  end

end
