# RB101-109 - Small Problems - Easy 5 - Clean up words Redux
#
# Given a string that consists of some words (all lowercased) and an
# assortment of non-alphabetic characters, write a method that returns that
# string with all of the non-alphabetic characters replaced by spaces. If one
# or more non-alphabetic characters occur in a row, you should only have one
# space in the result (the result should never have consecutive spaces).
#
ALPHABET = ('a'..'z').to_a

def cleanup(str)
  clean_array = []
  str.chars.each do |char|
    if ALPHABET.include?(char)
      clean_array << char
    else
      clean_array << ' ' unless clean_array.last == ' '
    end
  end
  clean_array.join
end


p cleanup("---what's my +*& line?")
cleanup("---what's my +*& line?") == ' what s my line '

p cleanup("---what's my +*& line?") == ' what s my line '
