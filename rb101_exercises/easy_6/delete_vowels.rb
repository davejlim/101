# RB101-109 Small Problems - Easy 6 - Delete Vowels
#
# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# Input: Array of strings
# Output: Array of strings
# Data Structure: Array
#
# Approach
# Iterate through each element of the initial array
# Iterate through each string element
# Select a character to a new array if it is not a vowel
# Return the new array

VOWELS = %w(a e i o u A E I O U)

def remove_vowels(array)
  array.map do |string|
    removed_vowel_str = string.split(//).select do |char|
      !VOWELS.include?(char)
    end
    removed_vowel_str.join
   end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
