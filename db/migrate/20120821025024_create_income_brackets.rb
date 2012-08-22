class CreateIncomeBrackets < ActiveRecord::Migration
  def change
    create_table :income_brackets do |t|
      t.string :name
      t.integer :total_income
      t.string :descr

      t.timestamps
    end
  end
end
