class Trip < ActiveRecord::Base
	has_many :stop_times, primary_key: :trip_id
  has_many :stops, through: :stop_times, primary_key: :trip_id
end