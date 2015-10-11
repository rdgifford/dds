class CreateUserShifts < ActiveRecord::Migration
  def change
    create_table :user_shifts do |t|
      t.integer        :position_id
      t.belongs_to     :shift, index: true
      t.belongs_to     :user,  index: true
      t.belongs_to     :shift_vehicle, index: true
      t.timestamps null: false
    end
  end
end
