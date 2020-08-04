# RB101-109 - Small Problems - Easy 8 - Reverse the Digits in a Number
#
# Write a method that takes a positive integer as an argument and returns that
# number with its digits reversed. Examples:
#
# Don't worry about arguments with leading zeros - Ruby sees those as octal
# numbers, which will cause confusing results. For similar reasons, the return
# value for our fourth example doesn't have any leading zeros.

# Input: Integer
# Output: Integer
# Data Structure: Array
#
# Approach:
# Conver the passed in integer to a string
# Convert the string to an array
# Iterate through the array and prepend each iteration
# Join the array
# Convert to an integer

require 'pry'

def reversed_number(int)
  reversed_array = []

  int.to_s.split('').each do |char|
    reversed_array.prepend(char)
  end

  reversed_array.join.to_i
end


p reversed_number(12213)
p reversed_number(456)
p reversed_number(12000)
p reversed_number(12003)
p reversed_number(1)
p reversed_number(12345)
p
p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
