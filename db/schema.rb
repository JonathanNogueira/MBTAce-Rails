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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gtfs_agency", id: false, force: true do |t|
    t.text "agency_id",       null: false
    t.text "agency_name",     null: false
    t.text "agency_url",      null: false
    t.text "agency_timezone", null: false
    t.text "agency_lang"
    t.text "agency_phone"
    t.text "agency_fare_url"
  end

  create_table "gtfs_calendar", id: false, force: true do |t|
    t.text    "service_id", null: false
    t.integer "monday",     null: false
    t.integer "tuesday",    null: false
    t.integer "wednesday",  null: false
    t.integer "thursday",   null: false
    t.integer "friday",     null: false
    t.integer "saturday",   null: false
    t.integer "sunday",     null: false
    t.date    "start_date", null: false
    t.date    "end_date",   null: false
  end

  create_table "gtfs_calendar_dates", id: false, force: true do |t|
    t.text    "service_id",     null: false
    t.date    "date",           null: false
    t.integer "exception_type", null: false
  end

  create_table "gtfs_directions", id: false, force: true do |t|
    t.integer "direction_id", null: false
    t.text    "description"
  end

  create_table "gtfs_fare_attributes", id: false, force: true do |t|
    t.text    "fare_id",           null: false
    t.float   "price",             null: false
    t.text    "currency_type",     null: false
    t.integer "payment_method"
    t.integer "transfers",         null: false
    t.integer "transfer_duration"
  end

  create_table "gtfs_fare_rules", id: false, force: true do |t|
    t.text "fare_id",        null: false
    t.text "route_id"
    t.text "origin_id"
    t.text "destination_id"
    t.text "contains_id"
  end

  create_table "gtfs_feed_info", id: false, force: true do |t|
    t.text "feed_publisher_name", null: false
    t.text "feed_publisher_url",  null: false
    t.text "feed_lang",           null: false
    t.text "feed_start_date"
    t.text "feed_end_date"
    t.text "feed_version"
  end

  create_table "gtfs_frequencies", id: false, force: true do |t|
    t.text    "trip_id"
    t.text    "start_time",               null: false
    t.text    "end_time",                 null: false
    t.integer "headway_secs",             null: false
    t.integer "exact_times",  default: 0
  end

  create_table "gtfs_location_types", id: false, force: true do |t|
    t.integer "location_type", null: false
    t.text    "description"
  end

  create_table "gtfs_payment_methods", id: false, force: true do |t|
    t.integer "payment_method", null: false
    t.text    "description"
  end

  create_table "gtfs_pickup_dropoff_types", id: false, force: true do |t|
    t.integer "type_id",     null: false
    t.text    "description"
  end

  create_table "gtfs_route_types", id: false, force: true do |t|
    t.integer "route_type",  null: false
    t.text    "description"
  end

  create_table "gtfs_routes", id: false, force: true do |t|
    t.text    "route_id",                            null: false
    t.text    "agency_id"
    t.text    "route_short_name", default: "",       null: false
    t.text    "route_long_name",  default: "",       null: false
    t.text    "route_desc"
    t.integer "route_type",                          null: false
    t.text    "route_url"
    t.text    "route_color"
    t.text    "route_text_color", default: "000000"
  end

  create_table "gtfs_shapes", id: false, force: true do |t|
    t.text    "shape_id",            null: false
    t.float   "shape_pt_lat",        null: false
    t.float   "shape_pt_lon",        null: false
    t.integer "shape_pt_sequence",   null: false
    t.float   "shape_dist_traveled"
  end

  create_table "gtfs_stop_times", id: false, force: true do |t|
    t.text    "trip_id"
    t.text    "arrival_time"
    t.text    "departure_time"
    t.text    "stop_id"
    t.integer "stop_sequence",       null: false
    t.text    "stop_headsign"
    t.integer "pickup_type"
    t.integer "drop_off_type"
    t.float   "shape_dist_traveled"
  end

  create_table "gtfs_stops", id: false, force: true do |t|
    t.text    "stop_id",             null: false
    t.text    "stop_code"
    t.text    "stop_name",           null: false
    t.text    "stop_desc"
    t.float   "stop_lat",            null: false
    t.float   "stop_lon",            null: false
    t.text    "zone_id"
    t.text    "stop_url"
    t.integer "location_type"
    t.text    "parent_station"
    t.text    "stop_timezone"
    t.integer "wheelchair_boarding"
  end

  create_table "gtfs_transfer_types", id: false, force: true do |t|
    t.integer "transfer_type", null: false
    t.text    "description"
  end

  create_table "gtfs_transfers", id: false, force: true do |t|
    t.text    "from_stop_id",      null: false
    t.text    "to_stop_id",        null: false
    t.integer "transfer_type",     null: false
    t.integer "min_transfer_time"
  end

  create_table "gtfs_trips", id: false, force: true do |t|
    t.text    "route_id",      null: false
    t.text    "service_id",    null: false
    t.text    "trip_id",       null: false
    t.text    "trip_headsign"
    t.integer "direction_id"
    t.text    "block_id"
    t.text    "shape_id"
  end

  create_table "gtfs_wheelchair_boardings", id: false, force: true do |t|
    t.integer "wheelchair_boarding", null: false
    t.text    "description"
  end

end
