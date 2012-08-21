# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
IncomeBracket.create(
  [
    {:name => 'bracket1', :total_income => 152_959_513, :descr => "2012's 10% tax bracket"},   #10%
    {:name => 'bracket2', :total_income => 1_183_128_472, :descr => "Current 15% tax bracket"}, #15%
    {:name => 'bracket3', :total_income => 1_568_261_541, :descr => "Current 25% tax bracket"}, #25%
    {:name => 'bracket4', :total_income => 545_834_436, :descr => "Current 28% tax bracket"},   #28%
    {:name => 'bracket5', :total_income => 387_601_030, :descr => "Current 33% tax bracket"},   #33%
    {:name => 'bracket6', :total_income => 860_236_500, :descr => "Current 35% tax bracket"},   #35%
    {:name => 'capital_gains', :total_income => 367_028_103, :descr => "Current capital gains"}   #15% capital gains
  ])
Income.create(
  [
    {:name => 'social_security', :income => 949_000_000},
    {:name => 'corporate_income_tax', 339_000_000},
    {:name => 'excise_taxes', 68_900_000},
    {:name => 'custom_duties', 29_100_000},
    {:name => 'Estate Taxes', 26_300_000},
    {:name => 'Other', 47_900_000},
  ])
