class GtfsCalendar < ActiveRecord::Base
  self.primary_key = "service_id"
  self.table_name = "gtfs_calendar"
end
