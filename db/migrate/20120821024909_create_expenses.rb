class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :descr
      t.integer :scenario_id

      t.timestamps
    end
  end
end
