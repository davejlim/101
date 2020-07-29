# RB101-109 - Small Problems - Easy 7 - The End is Near But Not Here
#
# Write a method that returns the next to last word in the String passed to it
# as an argument.
#
# Words are any sequence of non-blank characters.
#
# You may assume that the input String will always contain at least two words.

# Input: String
# Output: String
# Data Structure: Array
#
# Approach:
# Split the passed in string by spaces
# Return the -2 indexed string

def penultimate(str)
  str.split(' ')[-2]
end

p penultimate('last word')
p penultimate('Launch School is great!')
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

def middle(str)
  middle_arr = str.split(' ')

  if middle_arr.size == 1
    middle_arr[0]
  elsif middle_arr.size.odd?
    middle_arr[middle_arr.size / 2]
  else
    middle_arr[middle_arr.size / 2 - 1]
  end
end

p middle('last word')
p middle('Launch School is great!')
p middle('This should show the middle')

