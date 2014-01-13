class GtfsFeedInfosController < ApplicationController
  
  respond_to :json, :xml
  def show
    @gtfs_feed_info = GtfsFeedInfo.find(params[:id])
  end
end
