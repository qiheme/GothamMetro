class CreateCalendarDates < ActiveRecord::Migration
  def change
    create_table :calendar_dates do |t|
      t.string :date
      t.string :exception_type
      t.string :service_id

      t.timestamps
    end
  end
end
