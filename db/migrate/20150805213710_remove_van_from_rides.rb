class RemoveVanFromRides < ActiveRecord::Migration
    change_table :rides do |t|
      t.remove :van, :integer
      t.boolean :completion
    end
    change_table :navigators do |t|
      t.remove :completion, :boolean
      t.remove :created_at, :datetime
      t.remove :updated_at, :datetime
      t.string :name
      t.date :date
      t.integer :van
    end
  def change
    create_table :numbers do |t|
      t.integer :opening
      t.integer :closing
      t.decimal :gas
      t.integer :riders
    end
  end
end
