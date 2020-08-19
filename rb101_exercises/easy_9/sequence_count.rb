# RB101-109 - Small Problems - Easy 9 - Sequence Count
#
# Create a method that takes two integers as arguments. The first argument is
# a count, and the second is the first number of a sequence that your method
# will create. The method should return an Array that contains the same number
# of elements as the count argument, while the values of each element will be
# multiples of the starting number.
#
# You may assume that the count argument will always have a value of 0 or
# greater, while the starting number can be any integer value. If the count
# is 0, an empty list should be returned.
#
# Input: 1) Count; 2) Multiple
# Output: Array
# Data Structure: Array
#
# Approach:
# Create a new array called sequence_arr
# Invoke the upto method on the integer 1 and pass in a block as an argument
#   Within the block, sequence_arr << multiple * block parameter

def sequence(count, multiple)
  sequence_arr = []

  1.upto(count) do |cnt|
    sequence_arr << cnt * multiple
  end

  sequence_arr
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)
p
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
