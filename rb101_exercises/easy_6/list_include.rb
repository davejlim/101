# RB101-109 - Small Problems - Easy 6 - Does My List Include This?
#
# Write a method named include? that takes an Array and a search value as
# arguments. This method should return true if the search value is in the
# array, false if it is not. You may not use the Array#include? method in your
# solution.

def include?(array, value)
  !!array.find_index(value)
end

def include2?(array, value)
  array.each do |num|
    return true if num == value
  end
  false
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

p include2?([1,2,3,4,5], 3)
p include2?([1,2,3,4,5], 6)
p include2?([], 3)
p include2?([nil], nil)
p include2?([], nil)

p include2?([1,2,3,4,5], 3) == true
p include2?([1,2,3,4,5], 6) == false
p include2?([], 3) == false
p include2?([nil], nil) == true
p include2?([], nil) == false
