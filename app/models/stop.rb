class Stop < ActiveRecord::Base
  belongs_to :route, primary_key: :stop_id
  has_many :stoptimes, primary_key: :stop_id
end
