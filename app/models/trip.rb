class Trip < ActiveRecord::Base
	has_many :stoptimes
end
