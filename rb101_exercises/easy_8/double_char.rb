# RB101-109 - Small Problems - Easy 8 - Double Char (Part 1)
#
# Write a method that takes a string, and returns a new string in which every
# character is doubled.
#
# Input: String
# Output: String
# Data Structure: Array
#
# Approach:
# Convert the passed in string into an array
# Create a new array called double_char
# Iterate through the array
#   Add the current char into double_char twice
# Join the array into a string

def repeater(str)
  double_char_arr = []
  str.split('').each do |char|
    double_char_arr << char
    double_char_arr << char
  end

  double_char_arr.join
end

p repeater('Hello')
p repeater("Good job!")
p repeater('')
p
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
