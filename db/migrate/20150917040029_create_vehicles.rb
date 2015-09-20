class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer       :vehicle_number
      t.string        :model
      t.timestamps null: false
    end
  end
end
