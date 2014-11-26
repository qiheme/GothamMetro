json.array!(@routes) do |route|
  json.extract! route, :id, :agency_id, :color, :desc, :id, :long_name, :short_name, :text_color, :type, :url
  json.url route_url(route, format: :json)
end
