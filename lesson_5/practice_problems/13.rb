#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 13

require 'pry'

# Given the following data structure, return a new array containing the same sub-arrays as the original 
# but ordered logically by only taking into consideration the odd numbers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# expected sorted array: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# Input  - array of subarrays
# Output - array of subarrays sorted by odd numbers contained

# - create a map method to transform the subarrays
  # - create a method to sort through each subarray
    # - create a method that only selects the odd integers in the subarray to be sorted

new_arr = arr.sort_by do |subarray|
  subarray.select do |ele|
    ele.odd?
    binding.pry
  end
end

p new_arr