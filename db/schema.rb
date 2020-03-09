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

ActiveRecord::Schema.define(version: 20200309031428) do

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

  create_table "counties", force: :cascade do |t|
    t.string "name"
  end

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

  create_table "personnals", force: :cascade do |t|
    t.boolean  "creditor"
    t.boolean  "debtor"
    t.boolean  "landowner"
    t.boolean  "buildowner"
    t.string   "name"
    t.date     "birthday"
    t.string   "address"
    t.string   "telphone"
    t.string   "mobile"
    t.text     "remark"
    t.integer  "yfcase_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "identitycard"
  end

  add_index "personnals", ["yfcase_id"], name: "index_personnals_on_yfcase_id"

  create_table "plusrateas", force: :cascade do |t|
    t.string   "persona"
    t.decimal  "plusa",          precision: 4, scale: 2
    t.integer  "objectbuild_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "plusrateas", ["objectbuild_id"], name: "index_plusrateas_on_objectbuild_id"

  create_table "plusratebs", force: :cascade do |t|
    t.string   "personb"
    t.decimal  "plusb",          precision: 4, scale: 2
    t.integer  "objectbuild_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "plusratebs", ["objectbuild_id"], name: "index_plusratebs_on_objectbuild_id"

  create_table "townships", force: :cascade do |t|
    t.integer "county_id"
    t.string  "name"
    t.string  "zip_code"
  end

  add_index "townships", ["county_id"], name: "index_townships_on_county_id"

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
    t.date     "auctionday1"
    t.integer  "floorprice1"
    t.integer  "click1"
    t.integer  "monitor1"
    t.integer  "margin1"
    t.date     "auctionday2"
    t.integer  "floorprice2"
    t.integer  "click2"
    t.integer  "monitor2"
    t.integer  "margin2"
    t.date     "auctionday3"
    t.integer  "floorprice3"
    t.integer  "click3"
    t.integer  "monitor3"
    t.integer  "margin3"
    t.date     "auctionday4"
    t.integer  "floorprice4"
    t.integer  "click4"
    t.integer  "monitor4"
    t.integer  "margin4"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "county_id"
    t.integer  "township_id"
    t.boolean  "occupyneighbouringland"
    t.boolean  "register"
    t.boolean  "parkingspace"
    t.boolean  "managementfee"
    t.boolean  "occupy"
    t.boolean  "leak"
    t.boolean  "easyparking"
    t.boolean  "railway"
    t.boolean  "vegetablemarket"
    t.boolean  "store"
    t.boolean  "school"
    t.boolean  "park"
    t.boolean  "postoffice"
    t.boolean  "mainroad"
    t.boolean  "waterandpowerfailure"
    t.boolean  "goodvision"
    t.string   "buildchecklisttext"
    t.string   "buildchecklisturl"
    t.text     "buildchecklistremark"
  end

  add_index "yfcases", ["country_id"], name: "index_yfcases_on_country_id"
  add_index "yfcases", ["county_id"], name: "index_yfcases_on_county_id"
  add_index "yfcases", ["state_id"], name: "index_yfcases_on_state_id"
  add_index "yfcases", ["township_id"], name: "index_yfcases_on_township_id"
  add_index "yfcases", ["user_id"], name: "index_yfcases_on_user_id"

end
