# RB101-109 Small Problems - Easy 3 - Odd List
#
# Write a method that returns an Array that contains every other element of
# an Array that is passed in as an argument. The values in the returned list
# should be those values that are in the 1st, 3rd, 5th, and so on elements of
# the argument Array.

def oddities(ary)
  index = 0
  new_ary = []
  loop do
    new_ary << ary[index] if index.even?
    index += 1
    break if index == ary.size
  end
  new_ary
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
