# RB101-109 - Small Problems - Easy 7 - Multiply Lists
#
# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# Input: Two arrays
# Output: One array with the product of a pair of numbers from each array
# with the same index
# Data Structure: Array
#
# Approach:
# Invoke the map method on the array object that the first parameter is
# referencing
# Initialize the index variable and assign it to -1
# Increment the index
# Multiply the current element by the element at the same index in the 2nd arr

def multiply_list(arr1, arr2)
  index = -1
  arr1.map do |num|
    index += 1
    num * arr2[index]
  end
end

p multiply_list([3, 5, 7], [9, 10, 11])
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def zip_list(arr1, arr2)
  arr1.zip(arr2).map { |subarray| subarray.inject(:*) }
end

p zip_list([3, 5, 7], [9, 10, 11])
p zip_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
