class GtfsFareAttributesController < ApplicationController

  respond_to :json, :xml
  def show
    @gtfs_fare_attribute = GtfsFareAttribute.find(params[:id])
  end
end
