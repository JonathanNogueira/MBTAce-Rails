class GtfsLocationType < ActiveRecord::Base
  self.table_name = "gtfs_location_types"
  self.primary_key = "location_type"
end
