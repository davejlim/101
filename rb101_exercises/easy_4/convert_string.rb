# RB101-109 - Small Problems - Easy 4 - Convert a String to a Number
#
# The String#to_i method converts a string of numeric characters (including
# an optional plus or minus sign) to an Integer. String#to_i and the Integer
# constructor (Integer()) behave similarly. In this exercise, you will create
# a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about
# invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby,
# such as String#to_i, Integer(), etc. Your method should do this the
# old-fashioned way and calculate the result by analyzing the characters in
# the string.

NUMERALS = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
            "6" => 6, "7" => 7, "8" => 8, "9" => 9 }

def string_to_integer(str)
  array = str.split(//)
  numbers = array.map { |num| NUMERALS[num] }

  value = 0
  numbers.each { |digit| value = (value * 10) + digit }
  value
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. The String may have a leading + or - sign; if the
# first character is a +, your method should return a positive number; if it
# is a -, your method should return a negative number. If no sign is given,
# you should return a positive number.

# You may assume the string will always contain a valid number.

def string_to_signed_integer(str)
  if str[0] == '+' || str[0] == '-'
    sign = str.slice!(0)
  end

  integer =  string_to_integer(str)

  case sign
  when "+", nil
    integer
  when "-"
    (0 - integer)
  end
end

puts string_to_signed_integer('4321')
puts string_to_signed_integer('-570')
puts string_to_signed_integer('+100')
puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
