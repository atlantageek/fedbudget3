class CreateIncomeBrackets < ActiveRecord::Migration
  def change
    create_table :income_brackets do |t|
      t.string :name
      t.integer :val
      t.integer :scenario_id
      t.string :descr

      t.timestamps
    end
  end
end
