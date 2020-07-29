# RB101-109 - Small Problems - Easy 7 - Multiply All Pairs
#
# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.
#
# You may assume that neither argument is an empty Array.

# Input: Two Arrays
# Output: One Array
# Data Structure: Array
#
# Approach:
# Pass in the two arrays
# Initialize the multiplied array variable
# Iterate through the first array
# Iterate through the second array
# << the product of each into the multiplied array variable

def multiply_all_pairs(arr1, arr2)
  multiplied_arr = []

  arr1.each do |element|
    arr2.each do |ele|
      multiplied_arr << element * ele
    end
  end

  multiplied_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
