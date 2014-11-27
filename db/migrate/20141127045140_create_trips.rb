class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :bikes_allowed
      t.string :block_id
      t.string :direction_id
      t.string :headsign
      t.string :trip_id
      t.string :route_id
      t.string :service_id
      t.string :shape_id
      t.string :short_name

      t.timestamps
    end
  end
end
