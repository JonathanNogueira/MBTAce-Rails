class GtfsTrip < ActiveRecord::Base
  self.table_name = "gtfs_trips"
  self.primary_key = "trip_id"

  has_one :gtfs_route, :primary_key => 'route_id'
  has_one :gtfs_calendar, :primary_key => 'service_id', :foreign_key => 'service_id'
end
