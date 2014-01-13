class GtfsFareAttribute < ActiveRecord::Base
  self.table_name = "gtfs_fare_attributes"
  self.primary_key = "fare_id"
end
