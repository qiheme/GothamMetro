json.array!(@fares) do |fare|
  json.extract! fare, :id, :agency_id, :currency_type, :fare_id, :payment_method, :price, :price, :transfer_duration, :transfers
  json.url fare_url(fare, format: :json)
end
