class DropUser < ActiveRecord::Migration
  def change
    drop_table :Users
  end
end
