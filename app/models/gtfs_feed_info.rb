class GtfsFeedInfo < ActiveRecord::Base
  self.table_name = "gtfs_fare_info"
  self.primary_key = "feed_publisher_name"
end
