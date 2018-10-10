require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Bob", last_name: "Saget", hourly_rate: 100)
@store1.employees.create(first_name: "Tomato", last_name: "Pancakes", hourly_rate: 100)
@store1.employees.create(first_name: "Ted", last_name: "Bundy", hourly_rate: 100)

@store2.employees.create(first_name: "Dr. Crocatron", last_name: "Bitches", hourly_rate: 100)
@store2.employees.create(first_name: "Dixon", last_name: "Cider", hourly_rate: 100)
@store2.employees.create(first_name: "Butt", last_name: "Lord", hourly_rate: 100)
