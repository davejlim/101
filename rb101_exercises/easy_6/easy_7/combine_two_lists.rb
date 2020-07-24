# RB101-109 - Small Problems - Easy 7 - Combine Two Lists
#
# Write a method that combines two Arrays passed in as arguments, and returns
# a new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.
#
# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.
#
# Input: Two Arrays as Arguments
# Output: One array with alterating elements from each ar ray
# Data Structure: Array
#
# Approach:
# Create a loop
# Intialize a new array
# << the 0 index element from the first array into the new array
# << the 0 index element from the second array into the new array
# Increment the index counter
# Break the loop when the size of the new array is the same as the flattened
# two arrays

def interleave(arr1, arr2)
  interwoven = []
  index = 0

  loop do
    interwoven << arr1[index]
    interwoven << arr2[index]
    index += 1

    break if (arr1 + arr2).size == interwoven.size
  end

  interwoven
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def array_zip(arr1, arr2)
  arr1.zip(arr2).flatten
end

p array_zip([1, 2, 3], ['a', 'b', 'c'])
p array_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
