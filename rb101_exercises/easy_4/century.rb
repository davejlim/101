# RB101-109 - Small Problems - Easy 4 - What Century is That?
#
# Write a method that takes a year as input and returns the century. The
# return value should be a string that begins with the century number, and ends
# with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

# Input: Integer
# Output: String
# Data Structure: N/A
#
# Given an integer
# Initialize new variable and assign it to integer divided by 100
# If the integer does not end in 0, add 1
# Create case statement for integer % 10
  # 1 - st
  # 2 - nd
  # 3 - rd
  # 4-9, 0 - th
# Convert integer to string and concatenate with case statment

require 'pry'

def century(int)
  cent_num = int/100
  cent_num += 1 if (int % 10) != 0
  return cent_num.to_s + 'th' if [11, 12, 13].include?(cent_num % 100)
    case (cent_num % 10)
    when 1
      suffix = 'st'
    when 2
      suffix = 'nd'
    when 3
      suffix = 'rd'
    when 4..9, 0
      suffix = 'th'
    end
  cent_num.to_s + suffix
end

puts century(2001)
puts century(10103)

puts century(11201)

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
