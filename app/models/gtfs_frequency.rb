class GtfsFrequency < ActiveRecord::Base
  self.table_name = "gtfs_frequencies"
  self.primary_key = "trip_id"
end
