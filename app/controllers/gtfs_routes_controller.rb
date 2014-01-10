class GtfsRoutesController < ApplicationController
  
  respond_to :json, :xml
  def show
    @gtfs_route = GtfsRoute.find(params[:id])
  end
end
