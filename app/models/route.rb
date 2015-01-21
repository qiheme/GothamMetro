class Route < ActiveRecord::Base
	belongs_to :agency, primary_key: :route_id
	has_many :trips, primary_key: :route_id
end
