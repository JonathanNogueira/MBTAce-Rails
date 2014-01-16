class GtfsFareRule < ActiveRecord::Base
  self.table_name = "gtfs_fare_rules"
  self.primary_key = "fare_id"

  belongs_to :gtfs_route, :primary_key => 'route_id', :foreign_key => 'route_id'
  belongs_to :gtfs_fare_attribute, :primary_key => 'fare_id', :foreign_key => 'fare_id'
end
