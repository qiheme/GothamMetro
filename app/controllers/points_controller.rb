class PointsController < ApplicationController
  def show
    #binding.pry
    source = GTFS::Source.build("/Users/Quincy_Iheme/Downloads/path_gtfs.zip")

    stops = source.stops
    arrivals = source.stop_times

    # iterate over the list of stops, and for each stop, select the list of
    # arrival times for that stop from the list of ALL arrivals
    stops.each do |current_stop|
      current_stops_name = current_stop.name
      current_stops_arrivals = arrivals.select {|arrival| arrival.stop_id == current_stop.id}
      current_stops_arrivals = current_stops_arrivals.map do |arrival|
        output = {}
        output[:name] = current_stops_name
        output[:arrives] = arrival.arrival_time
        output[:departs] = arrival.departure_time
        output
      end

      #binding.pry
    end

  end
end
