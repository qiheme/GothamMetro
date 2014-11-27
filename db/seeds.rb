# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Agency.destroy_all
Calendar.destroy_all
CalendarDate.destroy_all
Fare.destroy_all
Route.destroy_all
Shape.destroy_all
Stop.destroy_all
StopTime.destroy_all


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
		if calendar.service_id = "744A1674"
			day = "Mon-Friday"
		elsif calendar.service_id = "745A1674"
			day = "Saturday"
		else
			day = "Sunday"
		end
	Calendar.create([{
		service_name: day,
		service_id: calendar.service_id,
		start_date: calendar.start_date,
		end_date: calendar.end_date,
		monday: calendar.monday,
		tuesday: calendar.tuesday,
		wednesday: calendar.wednesday,
		thursday: calendar.thursday,
		friday: calendar.friday,
		saturday: calendar.saturday,
		sunday: calendar.sunday,
	}])
end

fares = SCHEDULE.fare_attributes.each do |fare|
	Fare.create([{
		agency_id: "151",
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

stops = SCHEDULE.stops.each do |stop|
	Stop.create([{
		code: stop.code,
		desc: stop.desc,
		stop_id: stop.id,
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

shapes = SCHEDULE.shapes.each do |shape|
	Shape.create([{
		dist_traveled: shape.dist_traveled,
		shape_id: shape.id,
		pt_lat: shape.pt_lat,
		pt_lon: shape.pt_lon,
		pt_sequence: shape.pt_sequence
	}])
end

stop_times = SCHEDULE.stop_times.each do |time|
	StopTime.create([{
		stop_id: time.stop_id,
		trip_id: time.trip_id,
		arrival_time: time.arrival_time,
		departure_time: time.departure_time,
		stop_sequence: time.stop_sequence,
		drop_off_type: time.drop_off_type,
		pickup_type: time.pickup_type,
		shape_dist_traveled: time.shape_dist_traveled,
		stop_headsign: time.stop_headsign
	}])
end
