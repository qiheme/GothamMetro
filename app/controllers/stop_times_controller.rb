class StopTimesController < ApplicationController

  # GET /stop_times
  # GET /stop_times.json
  def index
    @stop_times = StopTime.all
  end

  # GET /stop_times/1
  # GET /stop_times/1.json
  def show
    @stop_time = StopTime.find(params[:id])
  end
end