class Expense < ActiveRecord::Base
  attr_accessible :descr, :name, :scenario_id
end
