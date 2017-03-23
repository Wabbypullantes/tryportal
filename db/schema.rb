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

ActiveRecord::Schema.define(version: 20170322151947) do

  create_table "abouts", force: :cascade do |t|
    t.text     "mission"
    t.text     "vision"
    t.text     "his"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "about_img_file_name"
    t.string   "about_img_content_type"
    t.integer  "about_img_file_size"
    t.datetime "about_img_updated_at"
    t.integer  "user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.string   "event_description"
    t.date     "event_date"
    t.string   "event_venue"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.string   "event_img_file_name"
    t.string   "event_img_content_type"
    t.integer  "event_img_file_size"
    t.datetime "event_img_updated_at"
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "adnu_img_file_name"
    t.string   "adnu_img_content_type"
    t.integer  "adnu_img_file_size"
    t.datetime "adnu_img_updated_at"
  end

  create_table "officers", force: :cascade do |t|
    t.string   "president"
    t.string   "internalvp"
    t.string   "externalvp"
    t.string   "secretary"
    t.string   "treasurer"
    t.string   "auditor"
    t.string   "pio"
    t.text     "fourthrep"
    t.text     "thirdrep"
    t.text     "secondrep"
    t.string   "vpgroup"
    t.string   "undersec"
    t.string   "coh"
    t.string   "undersec2"
    t.string   "fgh"
    t.string   "undersec3"
    t.string   "moderator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.text     "educ_attainment"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
  end

  create_table "researches", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.text     "description"
    t.string   "callNo"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "research_img_file_name"
    t.string   "research_img_content_type"
    t.integer  "research_img_file_size"
    t.datetime "research_img_updated_at"
    t.integer  "year"
    t.integer  "user_id"
    t.text     "contributor"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "subject_code"
    t.string   "subject_title"
    t.integer  "units"
    t.integer  "lec_units"
    t.integer  "lab_units"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "course_description"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
