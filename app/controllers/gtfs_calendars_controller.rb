class GtfsCalendarsController < ApplicationController

  respond_to :json, :xml

  def show
    @gtfs_calendar = GtfsCalendar.find(params[:id])
  end
end
