# RB101-109 Small Problems - Easy 4 - Short Long Short
#
# Write a method that takes two strings as arguments, determines the longest
# of the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

def short_long_short(str1, str2)
  longer = str1.length <=> str2.length
  case longer
  when -1
    str1 + str2 + str1
  when 1
    str2 + str1 + str2
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
