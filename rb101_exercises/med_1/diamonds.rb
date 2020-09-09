# RB101-109 - Small Problems - Medium 1 - Diamonds!
#
# Write a method that displays a 4-pointed diamond in an n x n grid, where n is
# an odd integer that is supplied as an argument to the method. You may assume
# that the argument will always be an odd integer.
#
# Input: Integer
# Output: Strings
#
# Approach:


def diamond(int)
  1.upto(int) do |num|
    next if num.even?
    puts "#{'*' * num}".center(int)
  end

  (int - 1).downto(1) do |num|
    next if num.even?
    puts "#{'*' * num}".center(int)
  end
end

diamond(1)
diamond(3)
diamond(9)
