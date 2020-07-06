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

# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

def signed_integer_to_string(int)
  num_string = integer_to_string(int.abs)
  if int < 0
    num_string.prepend('-')
  elsif int == 0
    num_string
  else
    num_string.prepend('+')
  end
end

puts signed_integer_to_string(4321)
puts signed_integer_to_string(-123)
puts signed_integer_to_string(0)
puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
