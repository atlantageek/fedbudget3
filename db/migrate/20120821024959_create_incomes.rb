class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :name
      t.integer :scenario_id
      t.string :descr

      t.timestamps
    end
  end
end
