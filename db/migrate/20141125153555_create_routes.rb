class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :agency_id
      t.string :color
      t.string :desc
      t.string :route_id
      t.string :long_name
      t.string :short_name
      t.string :text_color
      t.string :type
      t.text :route_url

      t.timestamps
    end
  end
end
