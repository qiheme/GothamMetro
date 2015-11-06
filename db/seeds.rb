Agency.delete_all
Calendar.delete_all
CalendarDate.delete_all
Fare.delete_all
Route.delete_all
Shape.delete_all
Stop.delete_all
StopTime.delete_all
Trip.delete_all

agencies = SCHEDULE.agencies.each do |agency|
	Agency.create([{
		fare_url: agency.fare_url,
		agency_id: agency.id,
		lang: agency.lang,
		name: agency.name,
		phone: agency.phone,
		timezone: agency.timezone,
		agency_url: agency.url
	}])
end

dates = SCHEDULE.calendar_dates.each do |date|
	CalendarDate.create([{
		date: date.date,
		exception_type: date.exception_type,
		service_id: date.service_id
	}])
end

calendar = SCHEDULE.calendars.each do |calendar|
	Calendar.create([{
		service_name: calendar.service_name,
		service_id: calendar.service_id,
		start_date: calendar.start_date,
		end_date: calendar.end_date,
		monday: calendar.monday,
		tuesday: calendar.tuesday,
		wednesday: calendar.wednesday,
		thursday: calendar.thursday,
		friday: calendar.friday,
		saturday: calendar.saturday,
		sunday: calendar.sunday
	}])
end

fares = SCHEDULE.fare_attributes.each do |fare|
	Fare.create([{
		agency_id: fare.agency_id,
    currency_type: fare.currency_type,
    fare_id: fare.fare_id,
    payment_method: fare.payment_method,
    price: fare.price,
    transfer_duration: fare.transfer_duration,
    transfers: fare.transfers
	}])
end

routes = SCHEDULE.routes.each do |route|
	Route.create([{
		agency_id: route.agency_id,
		color: route.color,
		desc: route.desc,
		route_id: route.id,
		long_name: route.long_name,
		short_name: route.short_name,
		text_color: route.text_color,
		route_type: route.type,
		route_url: route.url
	}])
end

shapes = SCHEDULE.shapes.each do |shape|
	Shape.create([{
		dist_traveled: shape.dist_traveled,
		shape_id: shape.id.to_i,
		pt_lat: shape.pt_lat,
		pt_lon: shape.pt_lon,
		pt_sequence: shape.pt_sequence
	}])
end

stops = SCHEDULE.stops.each do |stop|
	Stop.create([{
		code: stop.code,
		desc: stop.desc,
		stop_id: stop.id.to_i,
		lat: stop.lat,
		location_type: stop.location_type,
		lon: stop.lon,
		name: stop.name,
		parent_station: stop.parent_station,
		timezone: stop.timezone,
		stop_url: stop.url,
		zone_id: stop.zone_id
	}])
end

stop_times = SCHEDULE.stop_times.each do |time|
	StopTime.create([{
		stop_id: time.stop_id.to_i,
		trip_id: time.trip_id.hex,
		arrival_time: time.arrival_time,
		departure_time: time.departure_time,
		stop_sequence: time.stop_sequence,
		drop_off_type: time.drop_off_type,
		pickup_type: time.pickup_type,
		shape_dist_traveled: time.shape_dist_traveled,
		stop_headsign: time.stop_headsign
	}])
end

trips = SCHEDULE.trips.each do |trip|
	Trip.create([{
    block_id: trip.block_id,
    direction_id: trip.direction_id,
    headsign: trip.headsign,
    trip_id: trip.id.hex,
    route_id: trip.route_id,
    service_id: trip.service_id,
    shape_id: trip.shape_id,
    short_name: trip.short_name
	}])
end