class CreateShapes < ActiveRecord::Migration
  def change
    create_table :shapes do |t|
      t.string :dist_traveled
      t.string :shape_id
      t.string :pt_lat
      t.string :pt_lon
      t.string :pt_sequence

      t.timestamps
    end
  end
end
