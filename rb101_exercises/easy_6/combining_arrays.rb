# RB101-109 - Small Problems - Easy 6 - Combining Arrays
#
# Write a method that takes two Arrays as arguments, and returns an Array that
# contains all of the values from the argument Arrays. There should be no
# duplication of values in the returned Array, even if there are duplicates in
# the original Arrays.
#
# Input: Two Arrays
# Output: One Array
# Data Structure: Array
#
# Rules: No duplicates, combine all of the values from both arrays into one
#
# Approach
# Combine both arrays into a new array
# Remove duplicates from the new array

def merge(ary1, ary2)
  combine_array = ary1 + ary2
  combine_array.uniq!
end

p merge([1, 3, 5], [3, 6, 9])
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
