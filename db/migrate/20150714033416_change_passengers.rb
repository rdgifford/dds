class ChangePassengers < ActiveRecord::Migration
  def change
    change_column :rides, :passengers, :integer
  end
end
