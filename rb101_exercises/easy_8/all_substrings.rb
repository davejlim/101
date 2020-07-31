# RB101-109 - Small Problems - Easy 8 - All Substrings
#
# Write a method that returns a list of all substrings of a string. The
# returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on. Since multiple
# substrings will occur at each position, the substrings at a given position
# should be returned in order from shortest to longest.
#
# You may (and should) use the leading_substrings method you wrote in the
# previous exercise:

# Input: string
# Output: array
# Data Structure: array
#
# Approach:
# Intialize a variable called counter
# Initialize a new arr called all_sub
# Create a loop
# If the counter is == 0
#   all_sub << Call the leading_substrings method on the str
# Else
#   Call the shift method on the str
#   all_sub<< Call the leading_substrings method on the str
# End the If statement
# Increment the counter
# Break if the str.size == 0

def substrings(str)
  all_sub = []
  counter = 0

  loop do
    break if str.size == 1

    if counter == 0
      all_sub << leading_substrings(str)
    else
      str.slice!(0)
      all_sub << leading_substrings(str)
    end

    counter += 1
   end

  all_sub.flatten
end


def leading_substrings(str)
    lead_arr = []
      substring = ''
        str.split('').each do |char|
              substring += char
                  lead_arr << substring
                    end

          lead_arr
end

p substrings('abcde')

p substrings('abcde') == [
    'a', 'ab', 'abc', 'abcd', 'abcde',
      'b', 'bc', 'bcd', 'bcde',
        'c', 'cd', 'cde',
          'd', 'de',
            'e'
]
