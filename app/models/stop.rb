class Stop < ActiveRecord::Base
  has_many :stoptimes, primary_key: :stop_id
  has_many :trips, through: :stoptimes
end
