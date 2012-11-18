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

ActiveRecord::Schema.define(:version => 20121118002032) do

  create_table "crew_member_skills", :force => true do |t|
    t.integer  "crew_member_id"
    t.integer  "skill_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "crew_members", :force => true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "filmmaker"
    t.string   "img"
    t.text     "bio"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "films", :force => true do |t|
    t.integer  "budget"
    t.string   "location"
    t.string   "trailer"
    t.text     "synopsis"
    t.integer  "genre_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "status"
  end

  create_table "genres", :force => true do |t|
    t.string   "film_genre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "investors", :force => true do |t|
    t.text     "bio"
    t.string   "location"
    t.string   "accredidation"
    t.text     "investments"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "budget_size"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
  end

  create_table "jobs", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "location"
    t.integer  "film_id"
    t.date     "audition_start_date"
    t.date     "audition_end_date"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "roles", :force => true do |t|
    t.integer  "crew_member_id"
    t.integer  "film_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "crew_member_skill"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "username"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
