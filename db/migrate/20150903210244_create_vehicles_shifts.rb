class CreateVehiclesShifts < ActiveRecord::Migration
  def change
    create_table :vehicles_shifts do |t|
      t.integer :shift_id
      t.integer :vehicle_id
      t.integer :start_mileage
      t.integer :end_mileage
      t.decimal :start_gas
      t.decimal :end_gas
      t.timestamps null: false
    end
  end
end
