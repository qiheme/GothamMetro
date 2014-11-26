class CreateStopTimes < ActiveRecord::Migration
  def change
    create_table :stop_times do |t|
      t.string :stop_id
      t.string :trip_id
      t.string :arrival_time
      t.string :departure_time
      t.string :stop_sequence
      t.string :drop_off_type
      t.string :pickup_type
      t.string :shape_dist_traveled
      t.string :stop_headsign

      t.timestamps
    end
  end
end
