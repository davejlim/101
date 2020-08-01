# RB101-109 - Small Problems - Easy 8 - Double Char (Part 2)
#
# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.

# Input: String
# Output: String
# Data Structure: Array
#
# Approach:
# Initialize a new array called double_cons_arr
# Invoke the split method on the string object to return a new array object
# Iterate through that array
#   If the array belongs to VOWELS
#     Do not double
#   Else
#     Double the char
#   End
# Join the new array

LETTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
CONSONANTS = LETTERS.delete_if { |char| %w(a e i o u).include?(char) }
CONSONANTS += CONSONANTS.map { |char| char.upcase }

def double_consonants(str)
  double_cons_arr = []
  str.split('').each do |char|
    if CONSONANTS.include?(char)
      double_cons_arr << char << char
    else
      double_cons_arr << char
    end
  end

  double_cons_arr.join
end

p double_consonants('String')
p double_consonants("Hello-World!")
p double_consonants("July 4th")
p double_consonants('')
p
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
