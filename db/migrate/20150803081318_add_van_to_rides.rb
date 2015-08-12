class AddVanToRides < ActiveRecord::Migration
  def change
    add_column :rides, :van, :integer
  end
end
