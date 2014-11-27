json.array!(@trips) do |trip|
  json.extract! trip, :id, :bikes_allowed, :block_id, :direction_id, :headsign, :trip_id, :route_id, :service_id, :shape_id, :short_name
  json.url trip_url(trip, format: :json)
end
