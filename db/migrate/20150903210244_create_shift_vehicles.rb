class CreateShiftVehicles < ActiveRecord::Migration
  def change
    create_table :shift_vehicles do |t|
      t.integer        :start_mileage
      t.integer        :end_mileage
      t.decimal        :start_gas
      t.decimal        :end_gas
      t.belongs_to     :shift, index: true
      t.belongs_to     :vehicle, index: true
      t.timestamps null: false
    end
  end
end
