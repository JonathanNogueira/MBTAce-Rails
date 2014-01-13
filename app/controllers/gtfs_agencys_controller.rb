class GtfsAgencysController < ApplicationController
  
  respond_to :json, :xml
  def show
    @gtfs_agency = GtfsAgency.find(params[:id])
  end
end
