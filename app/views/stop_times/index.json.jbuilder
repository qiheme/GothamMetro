json.array!(@stop_times) do |stop_time|
  json.extract! stop_time, :id, :stop_id, :trip_id, :arrival_time, :departure_time, :stop_sequence, :drop_off_type, :pickup_type, :shape_dist_traveled, :stop_headsign
  json.url stop_time_url(stop_time, format: :json)
end
