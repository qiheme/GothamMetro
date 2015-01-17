class ChangeRoute < ActiveRecord::Migration
  def change
  	change_table :routes do |t|
	  	t.remove :type
      t.remove :desc
	  	t.string :route_type
      t.text :desc
	  end
  end
end
