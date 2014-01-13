class GtfsStop < ActiveRecord::Base
  self.table_name = "gtfs_stops"
  self.primary_key = "stop_id"
end
