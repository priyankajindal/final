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

ActiveRecord::Schema.define(version: 0) do

  create_table "accesses", force: :cascade do |t|
    t.integer "device_id"
    t.integer "subscription_id"
  end

  add_index "accesses", ["device_id"], name: "index_accesses_on_device_id"
  add_index "accesses", ["subscription_id"], name: "index_accesses_on_subscription_id"

  create_table "devices", force: :cascade do |t|
    t.string "name"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string  "name"
    t.string  "start"
    t.string  "expiry"
    t.string  "nextpayment"
    t.float   "amountdue"
    t.integer "user_id"
    t.string  "image"
  end

  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string  "login"
    t.integer "familysharing"
  end

end
