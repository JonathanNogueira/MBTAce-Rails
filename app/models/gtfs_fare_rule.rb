class GtfsFareRule < ActiveRecord::Base
  self.table_name = "gtfs_fare_rules"
  self.primary_key = "fare_id"
end
