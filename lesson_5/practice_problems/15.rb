#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 15

require 'pry'

# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [2, 6], d: [4]}, {e: [8], f: [6, 10]}]

# Input - array of hashes
# Output - array of hashes where all integers are even
# Data Structure - array

# - iterate through each array element
  # - access the values of the values of each hash
  # - select based on whether the integers all even

# new_arr = []

# arr.each do |hsh|
#   new_arr << hsh.select do |key, value|
#     value.all? { |int| int.even? }
#   end
# end

# p new_arr

new_arr = (arr.select do |hsh|
  hsh.all? do |key, values|
    values.all? { |int| int.even? }
  end
end)

p new_arr
