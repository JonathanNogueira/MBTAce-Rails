class GtfsRouteType < ActiveRecord::Base
  self.table_name = "gtfs_route_types"
  self.primary_key = "route_type"
end
