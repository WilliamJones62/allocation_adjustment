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

ActiveRecord::Schema.define(version: 20191009130954) do

  create_table "allocations", force: :cascade do |t|
    t.string "name"
    t.string "from_channel_1"
    t.string "from_cc_1"
    t.string "from_sku_1"
    t.integer "from_units_1"
    t.string "from_channel_2"
    t.string "from_sku_2"
    t.integer "from_units_2"
    t.string "from_channel_3"
    t.string "from_cc_3"
    t.string "from_sku_3"
    t.integer "from_units_3"
    t.string "from_channel_4"
    t.string "from_cc_4"
    t.string "from_sku_4"
    t.integer "from_units_4"
    t.string "from_channel_5"
    t.string "from_cc_5"
    t.string "from_sku_5"
    t.integer "from_units_5"
    t.string "from_channel_6"
    t.string "from_cc_6"
    t.string "from_sku_6"
    t.integer "from_units_6"
    t.string "to_channel_1"
    t.string "to_cc_1"
    t.string "to_sku_1"
    t.integer "to_units_1"
    t.string "to_channel_2"
    t.string "to_cc_2"
    t.string "to_sku_2"
    t.integer "to_units_2"
    t.string "to_channel_3"
    t.string "to_cc_3"
    t.string "to_sku_3"
    t.integer "to_units_3"
    t.string "to_channel_4"
    t.string "to_cc_4"
    t.string "to_sku_4"
    t.integer "to_units_4"
    t.string "to_channel_5"
    t.string "to_cc_5"
    t.string "to_sku_5"
    t.integer "to_units_5"
    t.string "to_channel_6"
    t.string "to_cc_6"
    t.string "to_sku_6"
    t.integer "to_units_6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "from_cc_2"
    t.boolean "from_itc_1"
    t.boolean "from_itc_2"
    t.boolean "from_itc_3"
    t.boolean "from_itc_4"
    t.boolean "from_itc_5"
    t.boolean "from_itc_6"
    t.boolean "to_itc_1"
    t.boolean "to_itc_2"
    t.boolean "to_itc_3"
    t.boolean "to_itc_4"
    t.boolean "to_itc_5"
    t.boolean "to_itc_6"
  end

  create_table "holidaybirdfcs", force: :cascade do |t|
    t.string "channel"
    t.string "sku"
    t.string "description"
    t.string "cc"
    t.integer "forecast"
    t.integer "harvest"
    t.string "period"
    t.integer "uom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "holidaybirds", force: :cascade do |t|
    t.string "channel"
    t.string "sku"
    t.string "description"
    t.integer "shipped"
    t.integer "ordered"
    t.integer "forecast"
    t.integer "harvest"
    t.datetime "datetime"
    t.string "cc"
    t.integer "adjustment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
