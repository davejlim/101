# RB101-109 - Small Problems - Easy 5 - Clean up the words
#
# Given a string that consists of some words (all lowercased) and an
# assortment of non-alphabetic characters, write a method that returns that
# string with all of the non-alphabetic characters replaced by spaces. If one
# or more non-alphabetic characters occur in a row, you should only have one
# space in the result (the result should never have consecutive spaces).

# Input: String
# Output: String
# Data Structure: Array
#
# Approach:
# Pass each character into an array, including spaces
# Replace nonalphanumeric characters with spaces
# Delete space if two are consecutive
# Join array

def cleanup(str)
  str_array = str.chars.map do |char|
    char.gsub(/[^a-zA-Z\d\s]/, ' ')
  end

  index = 0
  clean_array = []
  loop do
    if index == 0
      clean_array << str_array[index]
    elsif str_array[index - 1] == ' ' && str_array[index] == ' '
      str_array[index]
    else
      clean_array << str_array[index]
    end

    index += 1
    break if index == str_array.size
  end
  clean_array.join
end

p cleanup("---what's my +*& line?")
p cleanup("---what's my +*& line?") == ' what s my line '
cleanup("---what's my +*& line?") == ' what s my line '
