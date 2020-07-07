# RB101-109 - Small Problems - Easy 5 - Letter Swap
#
# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word are swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces

# Input: String
# Output: String
# Data Structure: Array
# Approach:
  # Convert passed in string to an array
  # Iterate through the array elements
    # Transform each element by swapping the first and last elements

require 'pry'

def swap(string)
  split_array = string.split(" ")
  swapped_array = split_array.map do |word|
    first = word[0]
    last = word[-1]
    if word.length > 1
      last + word[1..-2] + first
    else
      first
    end
  end
  swapped_array.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')
puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
