# RB101-109 - Small Problems - Easy 6 - Reversed Arrays (Part 2)
#
# Write a method that takes an Array, and returns a new Array with the
# elements of the original list in reverse order. Do not modify the original
# list.
#
# You may not use Array#reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.

# Input: Array
# Output: Reversed Array
# Data Structure: Array
#
# Rules:
# Return a new array and do not mutate the array passed in
#
# Approach
# Iterate through element of the passed in array
# Using the map method, return a new array with transformed values
# Each transformed value should should be assigned in the new array in reverse
# Obtain the index of the element and add it by 1 and convert it to a negative
# 0, 1, 2, 3,
# -1, -2, -3,

def negative_index(ary, ele)
  0 - (ary.index(ele) + 1)
end

def reverse(array)
  new_reversed_array = array.map do |element|
    array[negative_index(array, element)]
  end
end

# p reverse([1,2,3,4])
# p reverse(%w(a b e d c))
# p reverse(['abc'])
# p reverse([])
# p list = [1, 3, 2]                      # => [1, 3, 2]
# p new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list
# p new_list
#
# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true
#
# p list = [1, 3, 2]                      # => [1, 3, 2]
# p new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true

def reverse_further(array)
  array.each_with_object([]) do | element , result |
    result.unshift
  end
end

p reverse_further([1,2,3,4])
p reverse_further(%w(a b e d c))
p reverse_further(['abc'])
p reverse_further([])
p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse_further(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list
p new_list

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
