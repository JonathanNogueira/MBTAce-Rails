class GtfsStopTime < ActiveRecord::Base
  self.table_name = "gtfs_stop_times"
  self.primary_key = "trip_id"
end
