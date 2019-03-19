require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@sum_revenue = Store.sum(:annual_revenue)
puts "Total Revenue from all stores: $#{@sum_revenue.to_s}"
puts "Average Revenue from all stores: $#{@sum_revenue / Store.count}"

@big_money = Store.where('annual_revenue >= ?', 1000000).count
puts @big_money
