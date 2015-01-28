class StopTime < ActiveRecord::Base
	belongs_to :stop, foreign_key: "stop_id"
	belongs_to :trip, foreign_key: "trip_id"
end
