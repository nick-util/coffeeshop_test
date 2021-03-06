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

ActiveRecord::Schema.define(version: 20161120011336) do

  create_table "flavors", force: true do |t|
    t.string   "coffee_flavor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_models", force: true do |t|
    t.integer  "machine_type_id"
    t.boolean  "water_line_comp"
    t.string   "sku"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machine_models", ["machine_type_id"], name: "index_machine_models_on_machine_type_id"

  create_table "machine_type_pod_types", force: true do |t|
    t.integer  "machine_type_id"
    t.integer  "pod_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machine_type_pod_types", ["machine_type_id"], name: "index_machine_type_pod_types_on_machine_type_id"
  add_index "machine_type_pod_types", ["pod_type_id"], name: "index_machine_type_pod_types_on_pod_type_id"

  create_table "machine_types", force: true do |t|
    t.string   "product_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pod_models", force: true do |t|
    t.integer  "pod_type_id"
    t.integer  "flavor_id"
    t.integer  "pack_size"
    t.string   "sku"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pod_models", ["flavor_id"], name: "index_pod_models_on_flavor_id"
  add_index "pod_models", ["pod_type_id"], name: "index_pod_models_on_pod_type_id"

  create_table "pod_types", force: true do |t|
    t.string   "product_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
