class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :code
      t.string :desc
      t.string :stop_id
      t.string :lat
      t.string :location_type
      t.string :lon
      t.string :name
      t.string :parent_station
      t.string :timezone
      t.text :url
      t.string :zone_id

      t.timestamps
    end
  end
end
