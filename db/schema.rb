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

ActiveRecord::Schema.define(:version => 20130406101538) do

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