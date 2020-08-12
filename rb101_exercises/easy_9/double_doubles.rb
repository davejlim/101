# RB101-109 - Small Programs - Easy 9 - Double Doubles
#
# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits. For example, 44, 3333,
# 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
#
# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned
# as-is.
#
# Input: Integer
# Output: Integer
# Data Structure: Array
#
# Approach:
# Create a method to determine whether or not a number is a double number
#   Find the middle of a number
#   Slice the first half of a number
#   Slice the second half of a number
#   Compare if they are the same
# If a number is a double number, return the double number
# Otherwise, multiply by 2

def double_number?(int)
  string_of_int = int.to_s
  middle = string_of_int.size/2

  compare_array = []
  compare_array << string_of_int.slice(0, middle)
  compare_array << string_of_int.slice(middle, string_of_int.size - middle)

  compare_array[0] == compare_array[1]
end

def twice(int)
  if double_number?(int)
    int
  else
    int * 2
  end
end

p twice(37)
p twice(44)
p twice(334433)
p twice(444)
p twice(107)
p twice(103103)
p twice(3333)
p twice(7676)
p twice(123_456_789_123_456_789)
p twice(5)
p
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
