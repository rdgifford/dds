class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.integer :shift_id
      t.integer :vehicle_id
      t.integer :user_id
      t.timestamps null = false
    end
  end
end
