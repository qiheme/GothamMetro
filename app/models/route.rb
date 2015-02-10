class Route < ActiveRecord::Base
include StopHelper

	belongs_to :agency, primary_key: :agency_id
	has_many :trips, primary_key: :route_id
  has_many :stop_times, through: :trips, primary_key: :agency_id
  has_many :stops, through: :stop_times, primary_key: :agency_id
end
