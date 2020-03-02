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

ActiveRecord::Schema.define(version: 20200302091850) do

  create_table "builds", force: :cascade do |t|
    t.string   "buildnumber"
    t.integer  "yfcase_id"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "buildurl"
    t.decimal  "buildarea",               precision: 6, scale: 2
    t.string   "buildholdingpointperson"
    t.string   "buildholdingpointall"
    t.string   "buildtype"
    t.string   "usearea"
  end

  add_index "builds", ["yfcase_id"], name: "index_builds_on_yfcase_id"

  create_table "lands", force: :cascade do |t|
    t.string   "landnumber"
    t.integer  "yfcase_id"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "landurl"
    t.decimal  "landarea",               precision: 7, scale: 2
    t.integer  "landholdingpointperson"
    t.integer  "landholdingpointall"
  end

  add_index "lands", ["yfcase_id"], name: "index_lands_on_yfcase_id"

  create_table "objectbuilds", force: :cascade do |t|
    t.string   "address"
    t.integer  "totalprice"
    t.decimal  "buildarea",      precision: 9, scale: 2
    t.integer  "unitprice"
    t.decimal  "house",          precision: 5, scale: 2
    t.string   "unit"
    t.string   "floorheight"
    t.integer  "yfcase_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "surveyora"
    t.string   "surveyorb"
    t.decimal  "plusa",          precision: 3, scale: 2
    t.decimal  "plusb",          precision: 3, scale: 2
    t.string   "objectbuildurl"
    t.decimal  "mesaprice",      precision: 9, scale: 2
  end

  add_index "objectbuilds", ["yfcase_id"], name: "index_objectbuilds_on_yfcase_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "yfcases", force: :cascade do |t|
    t.string   "casenumber"
    t.string   "address"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.date     "auctionday"
    t.string   "auctionlevel"
    t.integer  "floorprice"
    t.integer  "margin"
    t.string   "creditor"
    t.string   "debtor"
    t.date     "firstsurveydate"
    t.date     "othersurveydate"
    t.text     "foreclosureannouncement"
    t.string   "objectphotos"
    t.text     "registeredmarketprice"
    t.string   "registrationmap"
    t.string   "registrationphoto"
    t.string   "foreclosurerecord"
    t.string   "surveyremark"
    t.string   "surveyresolution"
    t.string   "finaldecisionheader"
    t.string   "finaldecisionconclusion"
    t.string   "finaldecisionsurveyordecide1"
    t.string   "finaldecisionsurveyordecide2"
    t.string   "finaldecisionsurveyordecide3"
    t.string   "finaldecisionsurveyordecide4"
    t.string   "finaldecisionsurveyordecide5"
    t.integer  "click"
    t.integer  "monitor"
    t.string   "foreclosureannouncementlink"
    t.string   "objectphotoslink"
    t.string   "registeredmarketpricelink"
    t.string   "registrationmaplink"
    t.string   "registrationphotolink"
    t.string   "foreclosurerecordlink"
    t.string   "registeredmarketpricetext"
    t.integer  "user_id"
    t.string   "foreclosureannouncementtext"
  end

  add_index "yfcases", ["user_id"], name: "index_yfcases_on_user_id"

end
