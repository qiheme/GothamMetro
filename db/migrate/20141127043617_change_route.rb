class ChangeRoute < ActiveRecord::Migration
  def change
  	change_table :routes do |t|
	  	t.remove :type
	  	t.string :route_type
	  end
  end
end
