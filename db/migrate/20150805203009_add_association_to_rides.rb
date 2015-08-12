class AddAssociationToRides < ActiveRecord::Migration
  def change
    add_reference :rides, :van, index: true, foreign_key: true
  end
end
