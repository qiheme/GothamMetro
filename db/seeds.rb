# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Stop.destroy_all
Agency.destroy_all

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
		url: stop.url,
		zone_id: stop.zone_id
	}])
end

agencies = SCHEDULE.agencies.each do |agency|
	Agency.create([{
		fare_url: agency.fare_url,
		agency_id: agency.id,
		lang: agency.lang,
		name: agency.name,
		phone: agency.phone,
		timezone: agency.timezone,
		url: agency.url
	}])
end