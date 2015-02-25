class StopTime < ActiveRecord::Base
	belongs_to :stop, foreign_key: "stop_id"
	belongs_to :trip, foreign_key: "trip_id"

  def stop
    Stop.find_by(stop_id: self.stop_id)
  end

  def trip
    Trip.find_by(trip_id: self.trip_id)
  end

  def service_id
    self.trip.service_id
  end

  def direction_id
    self.trip.direction_id
  end
end