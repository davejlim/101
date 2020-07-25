# RB101-109 - Small Problems - Easy 7 - Staggered Caps (Part 1)
#
# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count
# as characters when switching between upper and lowercase.
#
# Input: String
# Output: String
# Data Structure: Array
#
# Approach:
# Split string passed in into an array
# Iterate through the array
# Upcase the first character
# Then alternate with a downcase on the next character
# Join the array

def staggered_case(str)
  array_of_str = str.split('')
  index = 0

  loop do
    if index.even?
      array_of_str[index].upcase!
    else
      array_of_str[index].downcase!
    end
  index += 1
  break if index == array_of_str.size
  end

  array_of_str.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
