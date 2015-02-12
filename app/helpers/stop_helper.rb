module StopHelper
  def stops
    Stop.where(stop_id: self.stop_times.collect {|time| time.stop_id}.uniq)
  end
end