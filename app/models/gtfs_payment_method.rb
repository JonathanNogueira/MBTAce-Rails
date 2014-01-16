class GtfsPaymentMethod < ActiveRecord::Base
  self.table_name = "gtfs_payment_methods"
  self.primary_key = "payment_method"

  belongs_to :gtfs_fare_attribute, :primary_key => 'payment_method'
end
