# RB101-109 Small Problems - Easy 3 - Palindromic Numbers
require 'pry'
#
# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

# Input: Integer
# Output: Boolean

def palindromic_number?(int)
  if int.to_s(8) != int.to_s
    string = int.to_s(8)
  else string = int.to_s
  end
  string == string.reverse
end

# puts palindromic_number?(34543) == true
# puts palindromic_number?(123210) == false
# puts palindromic_number?(22) == true
# puts palindromic_number?(5) == true
puts palindromic_number?(0012321) == true
