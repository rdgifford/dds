class DropTables < ActiveRecord::Migration
  def change
    drop_table :Numbers
    drop_table :Dispatchers
    drop_table :Navigators
  end
end
