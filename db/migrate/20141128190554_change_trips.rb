class ChangeTrips < ActiveRecord::Migration
  def change
  	change_table :trips do |t|
  		t.remove :bikes_allowed
  	end
  end
end
