class StationsController < ApplicationController
  def index
    # Authorization!!!
    if session[:user_id].nil?
      redirect_to sessions_new_path
    else
      arrivals = get_arrivals( params[:stop] , params[:direction], params[:day])
      #out of the output hash, get the arrival time and route
      times_routes = arrivals.map { |arrival| arrival[:arrive_time] + " " + arrival[:route].join }
      #sort the time and route by arrival time
      sorted_times = times_routes.sort
      #split the string of time and route into seperate elements of their own array
      times_routes_arr = sorted_times.map { |t| t.split }
      #parse the first element of the new arrays into am and pm times
      #and return a new array with am & pm times and routes
      @sorted_timesandroutes = times_routes_arr.map do |time|
        if time.count == 5
          Chronic.parse(time[0]).strftime("%l:%M%P") + " "+ time[1] + " " + time[2] + " " + time[3] + " " + time[4]
        elsif time.count == 6
          Chronic.parse(time[0]).strftime("%l:%M%P") + " "+ time[1] + " " + time[2] + " " + time[3] + " " + time[4] + " " + time[5]
        elsif time.count == 7
          Chronic.parse(time[0]).strftime("%l:%M%P") + " "+ time[1] + " " + time[2] + " " + time[3] + " " + time[4] + " " + time[5] + " " + time[6]
        elsif time.count == 8
          Chronic.parse(time[0]).strftime("%l:%M%P") + " "+ time[1] + " " + time[2] + " " + time[3] + " " + time[4] + " " + time[5] + " " + time[6] + " "+ time[7]
        end
      end

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
    routes = SCHEDULE.trips
    all_stops_arrivals = []

    # iterate over the list of stops, and for each stop, select the list of
    # arrival times for that stop from the list of ALL arrivals
    stops.each do |current_stop|
      current_stops_name = current_stop.name
      current_stops_arrivals = arrivals.select {|arrival| arrival.stop_id == current_stop.id}

      # for each arrival, get the name, arrive/depart times, day and direction, train id and route id and
      # map the arrivals to an array of hashes with that info
      current_stops_arrivals = current_stops_arrivals.map do |arrival|
        output = {}

        output[:stop] = current_stops_name
        output[:arrive_time] = arrival.arrival_time
        output[:depart_time] = arrival.departure_time
        output[:train_id] = arrival.trip_id

        # grab the trip object from the source file with the same id as the current trip
        trip = routes.find {|trip| trip.id == arrival.trip_id}

        # set the arrivals date:
        case trip.service_id
        when "744A1674"
          output[:date] = "Mon-Fri"
        when "745A1674"
          output[:date] = "Saturday"
        when "746A1674"
          output[:date] = "Sunday"
        end

        #get the route of the train
        case trip.route_id
        when "859"
          output[:route] = ["Hoboken - 33rd Street"]
        when "860"
          output[:route] = ["Hoboken - World Trade Center"]
        when "861"
          output[:route] = ["Journal Square - 33rd Street"]
        when "862"
          output[:route] = ["Newark - World Trade Center"]
        when "1024"
          output[:route] = ["Journal Square - 33rd Street (via Hoboken)"]
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

# def sort_arrivals
#   @sorted_times

#   @routes_to_display = []
#   # case [ Mon - Fri ]
#     nwk_wtc = ['Newark Penn Station', 'Harrison', 'Journal Square', 'Grove Street', 'Exchange Place', 'World Trade Center']
#     jsq_33rd = ['Journal Square', 'Grove Street', 'Newport', 'Christopher Street', '9th Street', '14th Street', '23rd Street', '33rd Street']
#     hob_33rd = ['Hoboken' 'Christopher Street', '9th Street', '14th Street', '23rd Street', '33rd Street']

#     # Look into ruby "for each and hashes"

#     # when nwk_wtc.include?(params(:stop))
#       # nwk_wtc_times = []
#       # nwk_wtc_times = @sorted_times.map do |routes|
#         # routes that include "Newark to World Trade Center"
#       # end
#       # @routes_to_display.push(nwk_wtc_times)
#     # end

#     # when jsq_33rd.include?(station)
#       # jsq_33rd_times = []
#       # jsq_33rd_times = @sorted_times.map do |routes|
#         # routes that include "Journal Square to 33rd Street"
#       # end
#       # @routes_to_display.push(jsq_33rd_times)
#     # end

#     # when hob_33rd.include?(station)
#       # hob_33rd_times = []
#       # hob_33rd_times = @sorted_times.map do |routes|
#         # routes that include "Hoboken to 33rd Street"
#       # end
#       # @routes_to_display.push(hob_33rd_times)
#     # end

#   # else
#     nwk_wtc = ['Newark Penn Station', 'Harrison', 'Journal Square', 'Grove Street', 'Exchange Place', 'World Trade Center']
#     nwk_hob_33rd = ['Newark Penn Station', 'Harrison', 'Journal Square', 'Newport', 'Hoboken' 'Christopher Street', '9th Street', '14th Street', '23rd Street', '33rd Street']

#     # when nwk_wtc.include?(params(:stop))
#       # nwk_wtc_times = []
#       # nwk_wtc_times = @sorted_times.map do |routes|
#         # routes that include "Newark to World Trade Center"
#       # end
#       # @routes_to_display.push(nwk_wtc_times)
#     # end

#     # when nwk_hob_33rd.include?(station)
#       # nwk_hob_33rd_times = []
#       # nwk_hob_33rd_times = @sorted_times.map do |routes|
#         # routes that include "Newark to 33rd Street via Hoboken"
#       # end
#       # @routes_to_display.push(nwk_hob_33rd_times)
#     # end
#   # end
# end
