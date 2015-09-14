class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
    t.string :name
    t.string :sid
    t.string :phone
    t.integer :passengers
    t.string :origin
    t.string :destination
    t.boolean :completion
    t.integer :vehicle_id
    end
    add_index :rides, :vehicle_id
  end
end
