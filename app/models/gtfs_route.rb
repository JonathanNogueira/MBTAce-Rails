class GtfsRoute < ActiveRecord::Base
  #Set primary key same as the db
  self.primary_key = "route_id"
  self.table_name = "gtfs_routes"

  has_one :gtfs_route_type, :primary_key => 'route_type', :foreign_key => 'route_type'
  has_one :gtfs_agency, :primary_key => 'agency_id', :foreign_key => 'agency_id'
  has_many :gtfs_trips, :foreign_key => 'route_id'

  has_many :gtfs_fare_rules, :primary_key => 'route_id', :foreign_key => 'route_id'
  has_many :gtfs_fare_attributes, through: :gtfs_fare_rules, :primary_key => 'fare_id', :foreign_key => 'fare_id'

end
