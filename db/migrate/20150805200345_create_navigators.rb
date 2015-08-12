class CreateNavigators < ActiveRecord::Migration
  def change
    create_table :navigators do |t|
      t.boolean :completion

      t.timestamps null: false
    end
  end
end
