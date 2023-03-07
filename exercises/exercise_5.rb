require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@revenue = Store.sum("annual_revenue")
puts "Total revenue for all stores: $#{@revenue}"

@avg_revenue = Store.average("annual_revenue")
puts "Average revenue for all stores: $#{@avg_revenue}"

@num_high_revenue_stores = Store.where("annual_revenue >= ?", 1000000).count
puts "#{@num_high_revenue_stores} stores are generating $1M in annual sales"