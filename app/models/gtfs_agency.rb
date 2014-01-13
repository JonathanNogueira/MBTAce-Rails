class GtfsAgency < ActiveRecord::Base
  self.primary_key = "agency_id"
  self.table_name = "gtfs_agency"
end
