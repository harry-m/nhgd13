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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130406130819) do

  create_table "accreditations", :force => true do |t|
    t.integer  "course_id"
    t.string   "text"
    t.integer  "accbodyid"
    t.string   "accurl"
    t.boolean  "accdepend"
    t.string   "accdependurl"
    t.string   "accdependurlw"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "applicants", :force => true do |t|
    t.string   "charkey"
    t.string   "subject"
    t.integer  "applicants"
    t.integer  "accepts"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.integer  "institution_id"
    t.string   "course_id"
    t.integer  "kistype"
    t.string   "title"
    t.string   "course_url"
    t.string   "ucas_code"
    t.string   "fee_variation"
    t.boolean  "fees_confirmed"
    t.integer  "fee_england"
    t.integer  "fee_scotland"
    t.integer  "fee_ni"
    t.integer  "fee_wales"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "employments", :force => true do |t|
    t.integer  "course_id"
    t.integer  "pop"
    t.integer  "agg"
    t.integer  "sbj"
    t.integer  "workstudy"
    t.integer  "assunemp"
    t.integer  "both"
    t.integer  "noavail"
    t.integer  "study"
    t.integer  "work"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "institutions", :force => true do |t|
    t.integer  "ukprn"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.float    "dropout_rate"
  end

  create_table "jobs", :force => true do |t|
    t.integer  "course_id"
    t.string   "title"
    t.integer  "perc"
    t.integer  "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "salaries", :force => true do |t|
    t.integer  "course_id"
    t.integer  "pop"
    t.integer  "agg"
    t.string   "sbj"
    t.integer  "ldlq"
    t.integer  "ldmed"
    t.integer  "lduq"
    t.integer  "lq"
    t.integer  "med"
    t.integer  "uq"
    t.integer  "instlq"
    t.integer  "instmed"
    t.integer  "instuq"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
