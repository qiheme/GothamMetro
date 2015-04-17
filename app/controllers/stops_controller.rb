class StopsController < ApplicationController
  def index
  	@stops = Stop.all
  end

  def show
  	@stop = Stop.find(params[:id])
  	@stop_times = stop_times(params[:direction], params[:day]).order(:arrival_time)
  end

  private

  def stop_times(direction, day)
    case day
    when "Sunday"
      services = Calendar.where(sunday: "1").map {|service| service.service_id}
    when "Monday"
      services = Calendar.where(monday: "1").map {|service| service.service_id}
    when "Tuesday"
      services = Calendar.where(tuesday: "1").map {|service| service.service_id}
    when "Wednesday"
      services = Calendar.where(wednesday: "1").map {|service| service.service_id}
    when "Thursday"
      services = Calendar.where(thursday: "1").map {|service| service.service_id}
    when "Friday"
      services = Calendar.where(friday: "1").map {|service| service.service_id}
    when "Saturday"
      services = Calendar.where(saturday: "1").map {|service| service.service_id}
    end

    chosen_stop_trips = @stop.trips.where(direction_id: direction, service_id: services)
    StopTime.where(trip_id: chosen_stop_trips.collect {|trip| trip.trip_id})
  end
end
