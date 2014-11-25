class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
    	t.text :fare_url
    	t.string :agency_id
    	t.string :lang
    	t.string :name
    	t.string :phone
    	t.string :timezone
    	t.text :url

      t.timestamps
    end
  end
end
