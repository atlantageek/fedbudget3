# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
IncomeBracket.create(
  [
    {:name => 'bracket1', :total_income => 152_959_513},   #10%
    {:name => 'bracket2', :total_income => 1_183_128_472}, #15%
    {:name => 'bracket3', :total_income => 1_568_261_541}, #25%
    {:name => 'bracket4', :total_income => 545_834_436},   #28%
    {:name => 'bracket5', :total_income => 387_601_030},   #33%
    {:name => 'bracket6', :total_income => 860_236_500}   #35%
    {:name => 'capital_gains', :total_income => 367_028_103}   #15% capital gains
  ]
