class GtfsRoutesController < ApplicationController
  
  respond_to :html, :json, :xml
  def show
    @gtfs_route = GtfsRoute.find(params[:id])
  end

  def index
  	@gtfs_route = GtfsRoute.all
  end 
end
