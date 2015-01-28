class Agency < ActiveRecord::Base
	has_many :routes, primary_key: :agency_id
  has_many :trips, through: :routes, primary_key: :agency_id
  has_many :stop_times, through: :trips, primary_key: :agency_id
  has_many :stops, through: :stop_times, primary_key: :agency_id
	has_many :fares, primary_key: :agency_id
end