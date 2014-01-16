class GtfsFareAttribute < ActiveRecord::Base
  self.table_name = "gtfs_fare_attributes"
  self.primary_key = "fare_id"

  	has_one :gtfs_payment_method, :primary_key => 'payment_method', :foreign_key => 'payment_method'

  	has_many :gtfs_fare_rules, :primary_key => 'trip_id', :foreign_key => 'trip_id'
	has_one  :gtfs_route, through: :gtfs_fare_rule, :primary_key => 'route_id', :foreign_key => 'route_id'
end