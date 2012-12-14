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

ActiveRecord::Schema.define(:version => 20121130083418) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.string   "hissays"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "book_assesses", :force => true do |t|
    t.string   "text"
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "book_counts", :force => true do |t|
    t.integer  "month_counts"
    t.integer  "week_counts"
    t.integer  "day_counts"
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "book_lines", :force => true do |t|
    t.string   "capter"
    t.string   "captername"
    t.integer  "book_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "text"
  end

  create_table "books", :force => true do |t|
    t.string   "bookname"
    t.integer  "wordqty"
    t.string   "describe"
    t.string   "textpath"
    t.string   "picpath"
    t.integer  "clickcount"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "author_id"
    t.integer  "assess_id"
    t.string   "tpye"
  end

  create_table "replies", :force => true do |t|
    t.string   "text"
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "topics", :force => true do |t|
    t.string   "title"
    t.string   "text"
    t.string   "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "email"
    t.string   "fullname"
    t.string   "ic_card"
    t.string   "password_question"
    t.string   "password_answer"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
