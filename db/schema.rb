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

ActiveRecord::Schema.define(version: 20170409044329) do

  create_table "child_records", force: :cascade do |t|
    t.string   "record_type"
    t.string   "contents"
    t.string   "created_by"
    t.string   "last_updated_by"
    t.integer  "child_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["child_id"], name: "index_child_records_on_child_id"
  end

  create_table "child_sponsorships", force: :cascade do |t|
    t.integer  "child_id"
    t.integer  "sponsor_id"
    t.string   "sponsorship_type"
    t.datetime "start_from"
    t.datetime "valid_till"
    t.string   "periodicity"
    t.string   "event"
    t.text     "comments"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["child_id"], name: "index_child_sponsorships_on_child_id"
    t.index ["sponsor_id"], name: "index_child_sponsorships_on_sponsor_id"
  end

  create_table "children", force: :cascade do |t|
    t.string   "name"
    t.binary   "photograph"
    t.datetime "enrolled_on"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "payment_records", force: :cascade do |t|
    t.string   "status"
    t.datetime "received_on"
    t.binary   "receipt"
    t.string   "comments"
    t.string   "created_by"
    t.string   "last_updated_by"
    t.integer  "child_sponsorship_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["child_sponsorship_id"], name: "index_payment_records_on_child_sponsorship_id"
  end

  create_table "requirements", force: :cascade do |t|
    t.string   "rtype"
    t.decimal  "cost"
    t.boolean  "matched",     default: false
    t.string   "description"
    t.integer  "student_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["student_id"], name: "index_requirements_on_student_id"
    t.index ["user_id"], name: "index_requirements_on_user_id"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "referred_by"
    t.string   "preferred_communication"
    t.string   "comments"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sponsorship_ds", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "requirement_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["requirement_id"], name: "index_sponsorship_ds_on_requirement_id"
    t.index ["user_id"], name: "index_sponsorship_ds_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "full_name"
    t.string   "grade"
    t.string   "dob"
    t.string   "place_of_birth"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated"
    t.datetime "activated_at"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

end
