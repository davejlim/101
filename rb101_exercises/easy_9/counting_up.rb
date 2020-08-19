# RB101-109 - Small Problems - Easy 9 - Counting Up
#
# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.
#
# You may assume that the argument will always be a valid integer that is
# greater than 0.
#
# Input: Integer
# Output: Array
# Data Structure: Array
#
# Approach:
# Create a range between 1 and the integer passed in
# Conver this range to an array

def sequence(int)
  seq_arr = []
  if int > 0
    (1..int).each { |num| seq_arr << num }
  else
    (int..1).each { |num| seq_arr << num }
  end
  seq_arr
end

p sequence(5)
p sequence(3)
p sequence(1)
p sequence(-1)
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
