class GtfsDirectionsController < ApplicationController
  
  respond_to :json, :xml
  def show
    @gtfs_direction = GtfsDirection.find(params[:id])
  end
end
