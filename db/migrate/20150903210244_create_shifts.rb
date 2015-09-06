class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.integer :opening
      t.integer :closing
      t.decimal :gas

      t.timestamps null: false
    end
  end
end
