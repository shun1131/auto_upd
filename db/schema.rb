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

ActiveRecord::Schema.define(version: 20160613090246) do

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "new_information",  limit: 255
    t.string   "feature",          limit: 255
    t.string   "feature_contents", limit: 255
    t.string   "feature_flag",     limit: 255
    t.string   "vacancy",          limit: 255
    t.string   "vacancy_state",    limit: 255
    t.string   "running",          limit: 255
    t.string   "memo",             limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "restaurant_id", limit: 4
    t.integer  "time0000",      limit: 4
    t.integer  "time0015",      limit: 4
    t.integer  "time0030",      limit: 4
    t.integer  "time0045",      limit: 4
    t.integer  "time0100",      limit: 4
    t.integer  "time0115",      limit: 4
    t.integer  "time0130",      limit: 4
    t.integer  "time0145",      limit: 4
    t.integer  "time0200",      limit: 4
    t.integer  "time0215",      limit: 4
    t.integer  "time0230",      limit: 4
    t.integer  "time0245",      limit: 4
    t.integer  "time0300",      limit: 4
    t.integer  "time0315",      limit: 4
    t.integer  "time0330",      limit: 4
    t.integer  "time0345",      limit: 4
    t.integer  "time0400",      limit: 4
    t.integer  "time0415",      limit: 4
    t.integer  "time0430",      limit: 4
    t.integer  "time0445",      limit: 4
    t.integer  "time0500",      limit: 4
    t.integer  "time0515",      limit: 4
    t.integer  "time0530",      limit: 4
    t.integer  "time0545",      limit: 4
    t.integer  "time0600",      limit: 4
    t.integer  "time0615",      limit: 4
    t.integer  "time0630",      limit: 4
    t.integer  "time0645",      limit: 4
    t.integer  "time0700",      limit: 4
    t.integer  "time0715",      limit: 4
    t.integer  "time0730",      limit: 4
    t.integer  "time0745",      limit: 4
    t.integer  "time0800",      limit: 4
    t.integer  "time0815",      limit: 4
    t.integer  "time0830",      limit: 4
    t.integer  "time0845",      limit: 4
    t.integer  "time0900",      limit: 4
    t.integer  "time0915",      limit: 4
    t.integer  "time0930",      limit: 4
    t.integer  "time0945",      limit: 4
    t.integer  "time1000",      limit: 4
    t.integer  "time1015",      limit: 4
    t.integer  "time1030",      limit: 4
    t.integer  "time1045",      limit: 4
    t.integer  "time1100",      limit: 4
    t.integer  "time1115",      limit: 4
    t.integer  "time1130",      limit: 4
    t.integer  "time1145",      limit: 4
    t.integer  "time1200",      limit: 4
    t.integer  "time1215",      limit: 4
    t.integer  "time1230",      limit: 4
    t.integer  "time1245",      limit: 4
    t.integer  "time1300",      limit: 4
    t.integer  "time1315",      limit: 4
    t.integer  "time1330",      limit: 4
    t.integer  "time1345",      limit: 4
    t.integer  "time1400",      limit: 4
    t.integer  "time1415",      limit: 4
    t.integer  "time1430",      limit: 4
    t.integer  "time1445",      limit: 4
    t.integer  "time1500",      limit: 4
    t.integer  "time1515",      limit: 4
    t.integer  "time1530",      limit: 4
    t.integer  "time1545",      limit: 4
    t.integer  "time1600",      limit: 4
    t.integer  "time1615",      limit: 4
    t.integer  "time1630",      limit: 4
    t.integer  "time1645",      limit: 4
    t.integer  "time1700",      limit: 4
    t.integer  "time1715",      limit: 4
    t.integer  "time1730",      limit: 4
    t.integer  "time1745",      limit: 4
    t.integer  "time1800",      limit: 4
    t.integer  "time1815",      limit: 4
    t.integer  "time1830",      limit: 4
    t.integer  "time1845",      limit: 4
    t.integer  "time1900",      limit: 4
    t.integer  "time1915",      limit: 4
    t.integer  "time1930",      limit: 4
    t.integer  "time1945",      limit: 4
    t.integer  "time2000",      limit: 4
    t.integer  "time2015",      limit: 4
    t.integer  "time2030",      limit: 4
    t.integer  "time2045",      limit: 4
    t.integer  "time2100",      limit: 4
    t.integer  "time2115",      limit: 4
    t.integer  "time2130",      limit: 4
    t.integer  "time2145",      limit: 4
    t.integer  "time2200",      limit: 4
    t.integer  "time2215",      limit: 4
    t.integer  "time2230",      limit: 4
    t.integer  "time2245",      limit: 4
    t.integer  "time2300",      limit: 4
    t.integer  "time2315",      limit: 4
    t.integer  "time2330",      limit: 4
    t.integer  "time2345",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
