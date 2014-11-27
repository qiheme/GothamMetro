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

ActiveRecord::Schema.define(version: 20141127043617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: true do |t|
    t.text     "fare_url"
    t.string   "agency_id"
    t.string   "lang"
    t.string   "name"
    t.string   "phone"
    t.string   "timezone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "agency_url"
  end

  create_table "calendar_dates", force: true do |t|
    t.string   "date"
    t.string   "exception_type"
    t.string   "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calendars", force: true do |t|
    t.string   "service_name"
    t.string   "service_id"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "monday"
    t.string   "tuesday"
    t.string   "wednesday"
    t.string   "thursday"
    t.string   "friday"
    t.string   "saturday"
    t.string   "sunday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fares", force: true do |t|
    t.string   "agency_id"
    t.string   "currency_type"
    t.string   "fare_id"
    t.string   "payment_method"
    t.string   "price"
    t.string   "transfer_duration"
    t.string   "transfers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.string   "agency_id"
    t.string   "color"
    t.string   "desc"
    t.string   "route_id"
    t.string   "long_name"
    t.string   "short_name"
    t.string   "text_color"
    t.text     "route_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "route_type"
  end

  create_table "shapes", force: true do |t|
    t.string   "dist_traveled"
    t.string   "shape_id"
    t.string   "pt_lat"
    t.string   "pt_lon"
    t.string   "pt_sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stop_times", force: true do |t|
    t.string   "stop_id"
    t.string   "trip_id"
    t.string   "arrival_time"
    t.string   "departure_time"
    t.string   "stop_sequence"
    t.string   "drop_off_type"
    t.string   "pickup_type"
    t.string   "shape_dist_traveled"
    t.string   "stop_headsign"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stops", force: true do |t|
    t.string   "code"
    t.string   "desc"
    t.string   "stop_id"
    t.string   "lat"
    t.string   "location_type"
    t.string   "lon"
    t.string   "name"
    t.string   "parent_station"
    t.string   "timezone"
    t.string   "zone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "stop_url"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
