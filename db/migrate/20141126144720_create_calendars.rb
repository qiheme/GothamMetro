class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :service_name
      t.string :service_id
      t.string :start_date
      t.string :end_date
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday

      t.timestamps
    end
  end
end
