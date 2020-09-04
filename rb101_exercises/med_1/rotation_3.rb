# RB101-109 - Small Exercises - Medium 1 - Rotation (Part 3)
#
# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining
# digits, you get 329175. Keep the first 2 digits fixed in place and rotate
# again to 321759. Keep the first 3 digits fixed in place and rotate again to
# get 321597. Finally, keep the first 4 digits fixed in place and rotate the
# final 2 digits to get 321579. The resulting number is called the maximum
# rotation of the original number.
#
# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.
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

# Approach:
# Convert the passed in number to a string and an array
# Assign a variable length to the size of the array
# Create a loop based on the the length
#   Create a counter that is assigned to length
#   Invoke the alternate_rotate_rightmost method on number and length
#   Decrement length by 1
# End loop when length is 0


def max_rotation(num)
  length = num.to_s.chars.size

  return num if length == 1

  counter = length
  rotated_num = num

  loop do
    rotated_num = alternate_rotate_rightmost(rotated_num, length)
    length -= 1
    return rotated_num if length  == 1
  end


end

p max_rotation(735291)
p max_rotation(3)
p max_rotation(35)
p max_rotation(105)
p max_rotation(8_703_529_146)
p
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# p alternate_rotate_rightmost(735291, 1)
# p alternate_rotate_rightmost(735291, 2)
# p rotate_rightmost_digits(735291, 3)
# p rotate_rightmost_digits(735291, 4)
# p rotate_rightmost_digits(735291, 5)
# p rotate_rightmost_digits(735291, 6)
# p
# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917
