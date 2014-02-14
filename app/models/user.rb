class User < ActiveRecord::Base
  has_many :points
  has_many :trips
end
