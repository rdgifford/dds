class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
    t.string        :name
    t.string        :sid
    t.string        :phone
    t.integer       :passengers
    t.string        :origin
    t.string        :destination
    t.boolean       :completion
    t.belongs_to    :vehicles_shift, index: true
    t.timestamps null: false
    end
  end
end
