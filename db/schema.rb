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

ActiveRecord::Schema.define(version: 20161024013513) do

  create_table "addresses", force: true do |t|
    t.string   "house_no"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "user_id"
    t.string   "email"
    t.string   "phone"
    t.string   "alt_phone"
    t.string   "mobile"
  end

  create_table "books", force: true do |t|
    t.string   "title"
    t.integer  "category"
    t.string   "description"
    t.integer  "langauge"
    t.integer  "grade"
    t.integer  "subject"
    t.integer  "media_type"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "city_name"
    t.integer  "zip"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "sent_to"
    t.string   "sent_from"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "country_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "econstatuses", force: true do |t|
    t.string   "econ_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", force: true do |t|
    t.integer  "grade"
    t.string   "institute"
    t.integer  "institute_type"
    t.integer  "institute_country"
    t.integer  "institute_state"
    t.string   "institue_city"
    t.string   "institute_website"
    t.string   "institute_email"
    t.string   "institute_phone"
    t.string   "teacher_name"
    t.string   "teach_email"
    t.string   "teacher_phone"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "institute_stree"
    t.string   "institue_zip"
  end

  create_table "finances", force: true do |t|
    t.integer  "father_profs"
    t.integer  "mother_profess"
    t.integer  "father_income"
    t.integer  "mother_income"
    t.integer  "other_income"
    t.integer  "economic_status"
    t.integer  "income_document"
    t.integer  "rationa_card"
    t.integer  "bank_statement"
    t.integer  "bank_name"
    t.string   "bank_account_no"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.binary   "uploaded_document", limit: 2147483647
    t.string   "filename"
    t.string   "content_type"
  end

  create_table "income_documents", force: true do |t|
    t.string   "income_doc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incomes", force: true do |t|
    t.string   "income_detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_details", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "gender"
    t.string   "sibling"
    t.string   "s_first_name"
    t.string   "s_middle_name"
    t.string   "s_last_name"
    t.date     "s_dob"
    t.string   "f_first_name"
    t.string   "f_middle_name"
    t.string   "f_last_name"
    t.date     "f_dob"
    t.string   "m_first_name"
    t.string   "m_middle_name"
    t.string   "m_last_name"
    t.string   "m_dob"
    t.string   "ref1_name"
    t.string   "ref1_relation"
    t.string   "ref2_name"
    t.string   "ref2_relation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "personal_details", ["user_id"], name: "index_personal_details_on_user_id", using: :btree

  create_table "professions", force: true do |t|
    t.string   "prof_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "school_types", force: true do |t|
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.integer  "country"
    t.integer  "state"
    t.integer  "zip"
    t.string   "city"
    t.integer  "user_type"
    t.integer  "distance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "states", force: true do |t|
    t.string   "state_name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_grades", force: true do |t|
    t.string   "grade_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "dob"
    t.boolean  "gender"
    t.boolean  "sibling"
    t.string   "s_first_name"
    t.string   "s_middle_name"
    t.string   "s_last_name"
    t.date     "s_dob"
    t.string   "f_first_name"
    t.string   "f_middle_name"
    t.string   "f_last_name"
    t.date     "f_dob"
    t.string   "m_first_name"
    t.string   "m_middle_name"
    t.string   "m_last_name"
    t.date     "m_dob"
    t.string   "ref1_name"
    t.string   "ref1_relation"
    t.string   "ref2_name"
    t.string   "ref2_relation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_type_id"
  end

end
