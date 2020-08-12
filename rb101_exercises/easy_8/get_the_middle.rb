# RB101-109 - Small Problems - Easy 8 - Get the Middle Character
#
# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length,
# you should return exactly one character. If the argument has an even length,
# you should return exactly two characters.
#
# Input: String
# Output: String
# Data Structure: Array
#
# Rules:
# Return middle character of string (including white spaces)
# If odd, return one character
# If even, return two characters
#
# Approach:
# Convert the string into an array
# Calculate the middle index of the array with array.size/2 - 1
# Create an if statement
# If array.size.odd?
#   Return the middle index of the array
# If array.size.even?
#   Return the middle index of the array + the next char

def center_of(str)
  str_arr = str.split('')
  middle = str_arr.size / 2

  if str.size.odd?
    str_arr[middle]
  else
    str_arr[middle - 1] + str_arr[middle]
  end

end

p center_of('I love ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('Launchschool')
p center_of('x')
p
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
