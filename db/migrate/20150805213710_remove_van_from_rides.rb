class RemoveVanFromRides < ActiveRecord::Migration
    change_table :rides do |t|
      t.remove :van, :integer
    end
end
