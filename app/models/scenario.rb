class Scenario < ActiveRecord::Base
  attr_accessible :descr, :name, :owner_id
end
