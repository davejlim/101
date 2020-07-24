# RB101-109 - Small Problems - Easy 6 - Right Triangles
#
# Write a method that takes a positive integer, n, as an argument, and
# displays a right triangle whose sides each have n stars. The hypotenuse of
# the triangle (the diagonal side in the images below) should have one end at
# the lower-left of the triangle, and the other end at the upper-right.

# Input: Integer
# Output: Strings
# Data Structure: N/A
#
# Approach:
# Initialize a variable (number) and assign it to the value that was passed in
# Initialize a variable (spaces) and assign the value number - 1 to it
# Initialize a variable (stars) and assign the value 1 to it
# Create a loop
# Output spaces and stars
# Subtract from spaces and add to stars
# Break loop when stars == number

def bottom_right(num)
  num_spaces = num - 1
  num_stars = 1
  spaces = ' '
  stars = '*'

  loop do
    puts "#{spaces * num_spaces}#{stars * num_stars}"
    num_spaces -= 1
    num_stars += 1
    break if num_stars == num
  end
end

def top_right(num)
  num_spaces = 0
  num_stars = num
  spaces = ' '
  stars = '*'

  loop do
      puts "#{spaces * num_spaces}#{stars * num_stars}"
      num_spaces += 1
      num_stars -= 1
      break if num_stars == 0
    end
end

def triangle(num, pos)
  if pos == 'bottom'
    bottom_right(num)
  else
    top_right(num)
  end
end


triangle(5, 'bottom')
triangle(9, 'top')

