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

ActiveRecord::Schema.define(version: 20151224153732) do

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dailies", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.string   "address"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "link"
    t.datetime "start"
    t.datetime "end"
    t.decimal  "price"
    t.text     "who"
    t.text     "extra"
    t.boolean  "special",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "place"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "company"
    t.string   "job_type"
    t.string   "slug"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "link"
    t.decimal  "salary"
    t.text     "description"
    t.boolean  "special",     default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
