class CreateUsersShifts < ActiveRecord::Migration
  def change
    create_table :users_shifts do |t|
      t.integer :shift_id
      t.integer :user_id
      t.integer :position_id
      t.timestamps null: false
    end
  end
end
