class GtfsPaymentMethod < ActiveRecord::Base
  self.table_name = "gtfs_payment_methods"
  self.primary_key = "payment_method"
end
