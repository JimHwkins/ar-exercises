require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Please enter a store name:"
store_name = gets.chomp

puts "Please enter the annual revenue:"
annual_revenue = gets.chomp.to_i

puts "Does the store carry men's apparel? (y/n)"
mens_apparel = gets.chomp.downcase == 'y'

puts "Does the store carry women's apparel? (y/n)"
womens_apparel = gets.chomp.downcase == 'y'

new_store = Store.new(name: store_name, annual_revenue: annual_revenue, mens_apparel: mens_apparel, womens_apparel: womens_apparel)

if new_store.save
  puts "New store successfully created"
else
  puts "The store couldn't be saved:"
  new_store.errors.full_messages.each do |msg|
    puts "- #{msg}"
  end
end
