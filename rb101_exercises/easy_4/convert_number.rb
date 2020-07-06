# RB101-109 - Small Problems - Easy 4 - Convert Numbers to a String
#
# Write a method that takes a positive integer or zero, and converts it to a
# string representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. Your method should do
# this the old-fashioned way and construct the string by analyzing and
# manipulating the number.

# Input: Integer
# Output: String
# Data Structure: Array
#
# Utilize digits method on integer to create an array of the digits
# Reverse the digits to ensure the correct order
# Join the array

def integer_to_string(int)
  int.digits.reverse.join
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)
puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
