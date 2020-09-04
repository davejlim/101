# RB101-109 - Small Exercises - Medium 1 - Rotation (Part 2)
#
#
# Write a method that can rotate the last n digits of a number. For example:
#
# Input: Array
# Output: Array
#
# Apporach:
# Create a new array and assign the passed in integer.to_s.split('') to it
# Create another new array and assign it to a slice of the first array
#   Utilizing the negative index and the length based on the second argument
# Pop method the number of the second argument
# Add the slice array to the end of the first array


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

def rotate_rightmost_digits(num, len)
  number_array = num.to_s.split('')
  rotated = rotate_array(number_array.slice(-len, len))
  number_array.pop(len)
  (number_array.join() + rotated.join()).to_i
end

def alternate_rotate_rightmost(num, len)
  number_array = num.to_s.chars
  number_array[-len..-1] = rotate_array(number_array[-len..-1])
  number_array.join.to_i
end

p rotate('string')
p rotate ('123')


p alternate_rotate_rightmost(735291, 1)
p alternate_rotate_rightmost(735291, 2)
p rotate_rightmost_digits(735291, 3)
p rotate_rightmost_digits(735291, 4)
p rotate_rightmost_digits(735291, 5)
p rotate_rightmost_digits(735291, 6)
p
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
