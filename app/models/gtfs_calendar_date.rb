class GtfsCalendarDate < ActiveRecord::Base
  self.table_name = "gtfs_calendar_dates"
  self.primary_key = "service_id"

  belongs_to :gtfs_calendar, :primary_key => 'service_id', :foreign_key => 'service_id'
  has_many :gtfs_trips, through: :gtfs_calendar, :primary_key => 'service_id', :foreign_key => 'service_id'
end
