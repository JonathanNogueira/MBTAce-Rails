class GtfsTrip < ActiveRecord::Base
  self.table_name = "gtfs_trips"
  self.primary_key = "trip_id"
end
