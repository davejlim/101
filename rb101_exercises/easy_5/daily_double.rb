# RB101-109 - Small Problems - Easy 5 - Daily Double
#
# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.


# Input: String
# Output: String
# Data Structure: Array
#
# Approach
# Split string into any array by characters
# Iterate through array
  # Add character to new array if if it is not the previous character

def crunch(str)
  no_dupe_array = []
  str.chars.each do |char|
    no_dupe_array << char unless no_dupe_array.last == char
  end

  no_dupe_array.join
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
