class GtfsCalendar < ActiveRecord::Base
  self.primary_key = "service_id"
  self.table_name = "gtfs_calendar"

  has_many :gtfs_calendar_dates, :primary_key => 'service_id', :foreign_key => 'service_id'
  has_many :gtfs_trips, :primary_key => 'service_id', :foreign_key => 'service_id'

end
