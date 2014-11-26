json.array!(@shapes) do |shape|
  json.extract! shape, :id, :dist_traveled, :shape_id, :pt_lat, :pt_lon, :pt_sequence
  json.url shape_url(shape, format: :json)
end
