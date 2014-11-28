class Agency < ActiveRecord::Base
	has_many :routes
	has_many :fares
end
