class Route < ActiveRecord::Base
	belongs_to :agency
	has_many :trips
end
