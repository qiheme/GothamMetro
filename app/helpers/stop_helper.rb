module StopHelper
  def stops
    self.stop_times.map {|time| Stop.where(stop_id: time.stop_id)}.flatten.uniq
  end
end