require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Viet", last_name: "Tran", hourly_rate: 50)
@store1.employees.create(first_name: "Esther", last_name: "Choi", hourly_rate: 45)
@store2.employees.create(first_name: "Giordano", last_name: "Temple", hourly_rate: 55)
@store2.employees.create(first_name: "Amaal", last_name: "Ali", hourly_rate: 65)
