class Trip < ActiveRecord::Base
	has_many :stoptimes, primary_key: :trip_id
end
