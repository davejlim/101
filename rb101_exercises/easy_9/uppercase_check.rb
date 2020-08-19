# RB101-109 - Small Problems - Easy 9 - Uppercase Check
#
# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.
#
# Input: String
# Output: True/False
# Data Structure: Array
#
# Approach:
# Iterate through each character of the string
# If the character does not equal to the upcase version of itself, return false
# If we are able to iterate through all of the chraracters, return true
#

def uppercase?(str)
  str.each_char do |char|
    if char != char.upcase
     return false
    end
  end
  true
end

p uppercase?('t')
p uppercase?('T')
p uppercase?('Four Score')
p uppercase?('FOUR SCORE')
p uppercase?('4SCORE!')
p uppercase?('')
p
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
