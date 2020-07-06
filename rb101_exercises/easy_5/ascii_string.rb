# RB101-109 - Small Problems - Easy 5 - ASCII String Value
#
# Write a method that determines and returns the ASCII string value of a
# string that is passed in as an argument. The ASCII string value is the sum
# of the ASCII values of every character in the string. (You may use
# String#ord to determine the ASCII value of a character.)

def ascii_value(str)
  sum = 0
  str.chars.each { |char| sum = char.ord + sum }
  sum
end

puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')
puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
