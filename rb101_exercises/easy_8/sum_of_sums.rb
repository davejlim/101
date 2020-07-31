# RB101-109 - Small Problems - Easy 8 - Sum of Sums
#
# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the
# Array always contains at least one number.

# Input: Array
# Output: Integer
# Data Structure: Array
#
# Approach:
# Initialize a variable called sum_arr and assign an empty arr to it
# Initialize a variable called sum and assign it to the integer object 0
# Iterate through the array
# Reassign sum to be the sum + the current element
# sum_arr << sum
# Add up each element of the sum_arr

def sum_of_sums(arr)
  sum = 0
  sum_arr = []

  arr.each do |num|
    sum += num
    sum_arr << sum
  end

  sum_arr.inject(:+)
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])
p
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
