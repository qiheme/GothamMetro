class Agency < ActiveRecord::Base
	has_many :routes, primary_key: :agency_id
	has_many :fares, primary_key: :agency_id
end
