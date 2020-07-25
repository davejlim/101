 # RB101-109 - Small Problems - Easy 7 - Swap Case
#
# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced by its lowercase version, and
# every lowercase letter by its uppercase version. All other characters should
# be unchanged.
#
# You may not use String#swapcase; write your own version of this method.

# Input: String
# Output: String
# Data Structure: Array
#
# Approach:
# Create global variables pointing to an array of all lower case
# Create globval variables pointing to an array of all upper case
# Split the string passed in to an array
# Itereate through the array
# If the character is included in the lower case array, uppercase
# If the character is included in the upper case array, lowercase
# Invoke the join method on the array to return a new string object

LOWERCASE = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
UPPERCASE = LOWERCASE.map { |letter| letter.upcase }

def swapcase(str)
  swap_array = str.split('').each do |letter|
    if LOWERCASE.include?(letter)
      letter.upcase!
    else
      letter.downcase!
    end
  end

  swap_array.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
