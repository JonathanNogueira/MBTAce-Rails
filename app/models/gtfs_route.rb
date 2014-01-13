class GtfsRoute < ActiveRecord::Base
  #Set primary key same as the db
  self.primary_key = "route_id"
  self.table_name = "gtfs_routes"

  belongs_to :gtfsagency
end
