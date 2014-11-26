class ChangeStops < ActiveRecord::Migration
  def change
  	change_table :stops do |t|
	  	t.remove :stop_url
	  	t.text :stop_url
	  end
  end
end
