# RB101-109 - Small Problems - Easy 8 - Leading Substrings
#
# Write a method that returns a list of all substrings of a string that start
# at the beginning of the original string. The return value should be arranged
# in order from shortest to longest substring.

# Input: String
# Output: Array
# Data Structure: Array
#
# Approach:
# Intialize a new array called lead_arr
# Initialize a new variable called substring and assing '' to it
# Split the passed in string into an array
# Iterate through that array
# Reassign and concatenate substring with the current element
# Add the substring to the lead_arr

def leading_substrings(str)
  lead_arr = []
  substring = ''
  str.split('').each do |char|
    substring += char
    lead_arr << substring
  end

  lead_arr
end

p leading_substrings('abc')
p leading_substrings('a')
p leading_substrings('xyzzy')
p
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
