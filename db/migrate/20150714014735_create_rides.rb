class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
    t.string :name
    t.string :sid
    t.string :phone
    t.decimal :passengers
    t.string :origin
    t.string :destination
    end
  end
end
