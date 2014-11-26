class ChangeAgencies < ActiveRecord::Migration
  def change
  	change_table :agencies do |t|
	  	t.remove :agency_url
	  	t.text :agency_url
	  end
  end
end
