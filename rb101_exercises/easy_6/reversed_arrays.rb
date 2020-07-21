# RB101-109 - Small Problems - Easy 6 - Reversed Arrays (Part 1)
#
# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return
# value should be the same Array object.
#
# You may not use Array#reverse or Array#reverse!.

# Input: Array
# Output: Array
# Data Structure: Array
#
# Rules
# Should return an array with the elements reversed
# Must mutate the original array
#
# Approach
# Copy passed in array to a new array
# Iterate through new array in reverse and reassign the original passed in array

def reverse!(array)
  copied_array = array.dup
  start_index = 0
  end_index = -1
  counting_index = 0

  return [] if array.empty?

  loop do
    array[start_index] = copied_array[end_index]
    start_index += 1
    end_index -= 1
    counting_index += 1
    break if counting_index >= array.size
  end

  array
end

test = [1, 2, 3, 4]
p reverse!(test)
p test

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list)
p list
p reverse!(list) == []
p list == []
