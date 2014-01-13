class GtfsCalendarDate < ActiveRecord::Base
  self.table_name = "gtfs_calendar_dates"
  self.primary_key = "service_id"

  belongs_to :gtfs_calendar
end
