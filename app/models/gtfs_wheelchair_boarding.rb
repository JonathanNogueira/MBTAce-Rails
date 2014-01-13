class GtfsWheelchairBoarding < ActiveRecord::Base
  self.table_name = "gtfs_wheelchair_boardings"
  self.primary_key = "wheelchair_boarding"
end
