# RB101-109 - Small Problems - Easy 3
#
# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

# Input: String
# Output: Boolean
# Data Structure: String
#
# Initialize starting variable
# Initialize ending variable
# Evaluate whether or not starting object equals ending object
# Iterate through string
# If false return false

def palindrome?(str)
  start = 0
  ending = -1
  loop do
    return false unless str[start] == str[ending]
    start += 1
    ending -= 1
    break if start == str.size
  end
  true
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?([1, 2, 3, 2, 1]) == true
puts palindrome?([2, 4, 5, 6, 7]) == false
