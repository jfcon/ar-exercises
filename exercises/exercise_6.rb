require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "John", last_name: "Connolly", hourly_rate: 200)
@store1.employees.create(first_name: "Ralf", last_name: "Pinhiero", hourly_rate: 150)
@store2.employees.create(first_name: "Vincent", last_name: "Wong", hourly_rate: 175)
@store2.employees.create(first_name: "Patrick", last_name: "O'Connor", hourly_rate: 60)