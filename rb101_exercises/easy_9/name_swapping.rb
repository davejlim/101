# RB101-109 - Small Problems - Easy 9 - Name Swapping
#
# Write a method that takes a first name, a space, and a last name passed as a
# single String argument, and returns a string that contains the last name, a
# comma, a space, and the first name.
#
# Input: String
# Output: String
# Data Structure: Array
#
# Approach:
# Assign first and last variables to an array created from the split method
#   invoked on the string object passed into the method
# Return the first and last variables reversed
#

def swap_name(str)
  first, last = str.split
  "#{last}, #{first}"
end

p swap_name('Joe Roberts')
p swap_name('Joe Roberts') == 'Roberts, Joe'
