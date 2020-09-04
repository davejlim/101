# RB101-109 - Small Exercises - Medium 1 - Rotation (Part 1)
#
# Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified.
#
# Do not use the method Array#rotate or Array#rotate! for your implementation.
#

# Input: Array
# Output: Array
#
# Apporach:
# Create a new array and assign it to a dup of the passed in array
# Take the first index of the passed in array and << it to the new array
# Shift the new array to remove the previous first index

def rotate_array(array)
  new_array = array.dup
  new_array << array[0]
  new_array.shift
  new_array
end

def rotate(obj)
  arr = obj.to_s.split('')

  rotate_array(arr).join()
end

p rotate('string')
p rotate ('123')

p rotate_array([7, 3, 5, 2, 9, 1])

p rotate_array(['a', 'b', 'c'])
p rotate_array(['a'])
p
p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
p
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
p
p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
