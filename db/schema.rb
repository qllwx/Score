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

ActiveRecord::Schema.define(:version => 20130205122453) do

  create_table "cjs", :force => true do |t|
    t.string   "ksh"
    t.string   "zkzh"
    t.string   "xx"
    t.integer  "nj"
    t.integer  "bj"
    t.integer  "zh"
    t.string   "xm"
    t.integer  "yw"
    t.integer  "sx"
    t.integer  "yy"
    t.integer  "wl"
    t.integer  "hx"
    t.integer  "sw"
    t.integer  "zz"
    t.integer  "ls"
    t.integer  "dl"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "grades", :force => true do |t|
    t.integer  "no"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "xq"
    t.string   "xx"
    t.string   "nj"
    t.string   "bj"
    t.integer  "zh"
    t.string   "xm"
    t.string   "xb"
    t.string   "xh"
    t.string   "sfzh"
    t.string   "mz"
    t.string   "csd"
    t.string   "hkszd"
    t.string   "jtdz"
    t.string   "fqxm"
    t.string   "mqxm"
    t.string   "jhrxm"
    t.string   "lxdh"
    t.string   "byxx"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.string   "grade"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tags", ["post_id"], :name => "index_tags_on_post_id"

end
