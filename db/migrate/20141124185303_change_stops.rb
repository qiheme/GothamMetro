class ChangeStops < ActiveRecord::Migration
  def change
  	rename_column :stops, :train_id, :stop_id
  end
end
