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

ActiveRecord::Schema.define(:version => 20170912071807) do

  create_table "builds", :force => true do |t|
    t.string   "name"
    t.string   "owner"
    t.string   "ticket_no"
    t.string   "cpu"
    t.string   "project"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "os_version"
    t.string   "approval"
    t.string   "comments"
    t.string   "cpus"
    t.string   "environment"
    t.string   "os_type"
    t.string   "ram"
    t.date     "requested_date"
    t.string   "requester"
    t.string   "space"
    t.string   "status"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "team"
    t.string   "other"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vmrequests", :force => true do |t|
    t.string   "name"
    t.string   "environment"
    t.string   "requester"
    t.date     "requested_date"
    t.string   "cpus"
    t.string   "ram"
    t.string   "space"
    t.string   "os_type"
    t.string   "approval"
    t.string   "comments"
    t.string   "status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "project"
    t.string   "ticket_no"
    t.string   "os_version"
    t.string   "owner"
    t.string   "other"
    t.date     "complete_date"
    t.string   "references"
    t.string   "prob_desc"
    t.string   "solution"
    t.string   "proposal"
  end

end
