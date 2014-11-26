json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :service_name, :service_id, :start_date, :end_date, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday
  json.url calendar_url(calendar, format: :json)
end
