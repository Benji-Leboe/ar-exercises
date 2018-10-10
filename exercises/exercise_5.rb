require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@stores = Store.all

sum = 0
store_count = 0

@stores.each do |store| 
  store_count += 1
  sum += store.annual_revenue
end

puts sum
puts sum / store_count

puts Store.where("annual_revenue > 1000000").size
