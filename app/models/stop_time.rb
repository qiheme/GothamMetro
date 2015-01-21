class StopTime < ActiveRecord::Base
	belongs_to :stop, primary_key: :stoptime_id
	belongs_to :trip, primary_key: :stoptime_id
end
