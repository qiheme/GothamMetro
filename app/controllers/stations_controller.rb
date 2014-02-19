class StationsController < ApplicationController
  def index
    # Authorization!!!
    if session[:user_id].nil?
      redirect_to sessions_new_path
    else
      @arrivals = get_arrivals( params[:stop] , params[:direction], params[:day])
      arrive_times = []
      @arrivals.each {|arrival| arrive_times << arrival[:arrive_time]}
      @sorted_times = arrive_times.sort
      render :index
    end
  end

  private

  def get_arrivals( stop, direction, date )

    # get all arrivals from method below, and then select based on stop, then select based on
    # direction, then select based on date (all chained after one another) and then
    # sort by arrival
    get_all_arrivals.select {|arrival| arrival[:stop] == stop}
            .select {|arrival| arrival[:direction] == direction}
            .select {|arrival| arrival[:date] == date}
  end

  def get_all_arrivals
    stops = SCHEDULE.stops
    arrivals = SCHEDULE.stop_times
    all_stops_arrivals = []

    # iterate over the list of stops, and for each stop, select the list of
    # arrival times for that stop from the list of ALL arrivals
    stops.each do |current_stop|
      current_stops_name = current_stop.name
      current_stops_arrivals = arrivals.select {|arrival| arrival.stop_id == current_stop.id}

      # for each arrival, get the name, arrive/depart times, day and direction and
      # map the arrivals to an array of hashes with that info
      current_stops_arrivals = current_stops_arrivals.map do |arrival|
        output = {}

        output[:stop] = current_stops_name
        output[:arrive_time] = arrival.arrival_time
        output[:depart_time] = arrival.departure_time
        # grab the trip object from the source file with the same id as the current trip
        trip = SCHEDULE.trips.find {|trip| trip.id == arrival.trip_id}

        # set the arrivals date:
        case trip.service_id
        when "744A1674"
          output[:date] = "Mon-Fri"
        when "745A1674"
          output[:date] = "Saturday"
        when "746A1674"
          output[:date] = "Sunday"
        end

        # set the arrivals direction
        output[:direction] = (trip.direction_id == "1" ?  "inbound" : "outbound")

        # map the output hash to each row of the new array
        output
      end

      all_stops_arrivals = all_stops_arrivals + current_stops_arrivals
    end
    return all_stops_arrivals
  end
end
