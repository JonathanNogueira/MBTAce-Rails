class GtfsShape < ActiveRecord::Base
  self.table_name = "gtfs_shapes"
  self.primary_key = "shape_id"
end
