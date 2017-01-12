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

ActiveRecord::Schema.define(version: 20170112124745) do

  create_table "children", force: :cascade do |t|
    t.string   "name"
    t.binary   "photograph"
    t.datetime "enrolled_on"
    t.datetime "created_on"
    t.datetime "last_updated_on"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "referred_by"
    t.string   "preferred_communication"
    t.string   "comments"
    t.datetime "created_on"
    t.datetime "last_updated_on"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end