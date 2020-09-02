# RB101-109 - Small Problems - Easy 9 - Grade Book
#
# Write a method that determines the mean (average) of the three scores passed
# to it, and returns the letter value associated with that grade.
#
# Tested values are all between 0 and 100. There is no need to check for
# negative values or values greater than 100.
#
# Input: Three Integers
# Output: String
#
# Approach:
# Get the average of the three integers
# Create a case statement for the average
# If it's within a certain range, return the letter grade

def get_grade(first, second, third)
  average = (first + second + third) / 3

  case average
  when >= 90 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else
    'F'
  end
end

p get_grade(101, 110, 103)
p get_grade(95, 90, 93)
p get_grade(50, 50, 95)
p
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
