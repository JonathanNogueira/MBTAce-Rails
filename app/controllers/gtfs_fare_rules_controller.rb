class GtfsFareRulesController < ApplicationController

  resopnd_to :json, :xml
  def show
    @gtfs_fare_rule = GtfsFareRule.find(params[:id])
  end
end
