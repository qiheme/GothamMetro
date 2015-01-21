class Fare < ActiveRecord::Base
	belongs_to :agency, primary_key: :fare_id
end
