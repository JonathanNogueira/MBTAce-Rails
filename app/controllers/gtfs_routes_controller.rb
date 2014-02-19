class GtfsRoutesController < ApplicationController
  # before_filter :restrict_access

  respond_to :html, :json, :xml
  def show
    @gtfs_route = GtfsRoute.where(:route_id => params[:id])
  end

  def index
  	@gtfs_route = GtfsRoute.all
  end 
end
