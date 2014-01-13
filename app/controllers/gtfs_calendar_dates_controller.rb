class GtfsCalendarDatesController < ApplicationController
  
  respond_to :json, :xml

  def show
    @gtfs_calendar_date = GtfsCalendarDate.find(params[:id])
  end
end
