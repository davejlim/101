# RB101-109 - Small Problems - Easy 5 - Alphabetical Numbers
#
# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:
#
# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Input: Array
# Output: Array
# Data Structure: Hash
#
# Approach
# Create a hash with each integer and its English word as key value pairs
# Sort the array by alphabetical order of the English word value
#
# My approach was incorrect. I did not need to use a hash as a data structure.
# We could have mapped it with an array and the index as long as the numbers
# corresponded to the index.

NUM_ENGLISH = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
                6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
                10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
                14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
                17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

NUMBER_WORDS = %w(zero, one, two, three, four, five, six, seven, eight, nine,
                  ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen,
                  seventeen, eighteen, nineteen)

def alphabetic_number_sort(ary)
  ary.sort_by do |num|
    NUMBER_WORDS[num]
  end
end


p alphabetic_number_sort((0..19).to_a)

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
