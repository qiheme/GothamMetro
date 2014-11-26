class CreateFares < ActiveRecord::Migration
  def change
    create_table :fares do |t|
      t.string :agency_id
      t.string :currency_type
      t.string :fare_id
      t.string :payment_method
      t.string :price
      t.string :price
      t.string :transfer_duration
      t.string :transfers

      t.timestamps
    end
  end
end
