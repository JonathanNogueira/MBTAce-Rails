class GtfsDirection < ActiveRecord::Base
  self.table_name = "gtfs_directions"
  self.primary_key = "direction_id"
end
