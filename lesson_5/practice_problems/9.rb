#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 9

require 'pry'

# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# Input - array
# Output - same array structure but with subarrays ordered in descending order
# Data Structure - array

# - create a map method to transform the array with the same number of subarrays
  # - create a sort method on the subarray
  # - we dont' need any further logic because the the integers don't contain extra digits

new_arr = arr.map do |subarray|
  subarray.sort { |a, b| b <=> a}
end

p new_arr