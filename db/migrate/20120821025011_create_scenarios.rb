class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :name
      t.integer :owner_id
      t.string :descr

      t.timestamps
    end
  end
end
