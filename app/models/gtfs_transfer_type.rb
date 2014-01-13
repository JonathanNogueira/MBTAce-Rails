class GtfsTransferType < ActiveRecord::Base
  self.table_name = "gtfs_transfer_types"
  self.primary_key = "transfer_type"
end
