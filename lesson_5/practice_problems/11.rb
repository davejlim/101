#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 11

require 'pry'

# Given the following data structure use a combination of methods, including either the select or reject method, 
# to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# Input - array of arrays
# Output - same format of array of arrays but with only integers that are multiples of 3

# - create a map method to return an array with the same structure
  # - create a select method to select only integers that modulo 3 is 0

new_arr = arr.map do |sub|
  sub.select do |int|
    int % 3 == 0
  end
end

p new_arr