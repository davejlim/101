#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 10

require 'pry'

# Given the following data structure and without modifying the original array, 
# use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# Input - array of hashes
# Output - same array of hashes but with the value of each integer incremented by 1
# Data structure - hash and array

# - create a map method to transform the array of hashes but to ensure the same structure
  # - create an each method to iterate through each value of the hash and increment by one

array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# new_array = array.map do |hash|
#   hash.transform_values { |v| v + 1}
# end

# p new_array

new_array = array.map do |hash|
  new_hash = {}

  hash.each do |key, values|
    new_hash[key] = values + 1
  end

  new_hash
end

p new_array