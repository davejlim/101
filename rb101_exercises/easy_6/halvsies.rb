# RB101-109 - Small Problems - Easy 6 - Halvsies
#
# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of
# the original Array, respectively. If the original array contains an odd
# number of elements, the middle element should be placed in the first half
# Array.
#
# Input: One array
# Output: Two arrays
# Data Structure: Arrays
#
# Rules: Split array into two arrays
# First half in the first array
# Second half in the second array
# If it is an odd number, the middle element should be placed in the first array
#
# Approach:
# Calculate length of array
# Divmod by 2 and assign the quotient to a variable
# Assign the remainder to a variable
# Add the quotient to the variable to set the length of the first array
# Iterate through each element of the array
# When the size of the first array is equal to the max length,
# begin << into the second array

def halvsies(array)
  first , remainder = array.size.divmod(2)
  max_length = first + remainder
  first_array = []
  second_array = []

  array.each do |element|
    if first_array.size < max_length
      first_array << element
    else
      second_array << element
    end
  end

  [first_array, second_array]
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
