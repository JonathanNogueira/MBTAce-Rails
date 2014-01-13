class GtfsPickupDropoffType < ActiveRecord::Base
  self.table_name = "gtfs_pickup_dropoff_types"
  slef.primary_key = "type_id"
end
