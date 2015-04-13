# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Agency.delete_all
Calendar.delete_all
CalendarDate.delete_all
Fare.delete_all
Route.delete_all
Shape.delete_all
Stop.delete_all
StopTime.delete_all
Trip.delete_all

SCHEDULE.each do |sched|
	if sched.entries.include?("agency.txt") == true
		agencies = sched.agencies.each do |agency|
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
	end

	if sched.entries.include?("calendar_dates.txt") == true
		dates = sched.calendar_dates.each do |date|
			CalendarDate.create([{
				date: date.date,
				exception_type: date.exception_type,
				service_id: date.service_id
			}])
		end
	end

	# TODO - Change back instance variable logic when GTFS fix is implemented

	if sched.entries.include?("calendar.txt") == true
		calendar = sched.calendars.each do |calendar|
			case calendar.service_id
				when "744A2171"
					day = "Mon-Friday"
				when "745A2171"
					day = "Saturday"
				when "746A2171"
					day = "Sunday"
				when "955A2171"
					day = "Sunday Archvive"
				when "954A2171"
					day = "Saturday Archive"
				when "1205A2171"
					day = "Mondays"
				when "1206A2171"
					day = "Tuesday-Friday"
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
				sunday: calendar.sunday
			}])
		end
	end

	if sched.entries.include?("fare_attributes.txt") == true
		fares = sched.fare_attributes.each do |fare|
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
	end

	if sched.entries.include?("routes.txt") == true
		routes = sched.routes.each do |route|
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
	end

	if sched.entries.include?("stops.txt") == true
		stops = sched.stops.each do |stop|
			Stop.create([{
				code: stop.code,
				desc: stop.desc,
				stop_id: stop.id.hex,
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
	end

	if sched.entries.include?("shapes.txt") == true
		shapes = sched.shapes.each do |shape|
			Shape.create([{
				dist_traveled: shape.dist_traveled,
				shape_id: shape.id,
				pt_lat: shape.pt_lat,
				pt_lon: shape.pt_lon,
				pt_sequence: shape.pt_sequence
			}])
		end
	end

	if sched.entries.include?("stop_times.txt") == true
		stop_times = sched.stop_times.each do |time|
			StopTime.create([{
				stop_id: time.stop_id.hex,
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
	end

	if sched.entries.include?("trips.txt") == true
		trips = sched.trips.each do |trip|
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
	end
end