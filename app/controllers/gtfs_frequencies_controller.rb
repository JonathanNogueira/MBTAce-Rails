class GtfsFrequenciesController < ApplicationController

  respond_to :json, :xml
  def show
    @gtfs_frequency = GtfsFrequency.find(params[:id])
  end
end
