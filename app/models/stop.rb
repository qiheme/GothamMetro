class Stop < ActiveRecord::Base
  has_many :stop_times, primary_key: :stop_id
  has_many :trips, through: :stop_times, primary_key: :stop_id

  def trips
    Trip.where(trip_id: self.stop_times.collect {|time| time.trip_id}.uniq)
  end
end
