# RB101-109 - Small Problems - Easy 4 - Running Totals
#
# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

# Input: Array of numbers
# Output: Array of same number of elements
# Data Structure: Array
#
# Iterate through the initial array of numbers
# For the first element, return the first element
# Upon each iteration add the current element to the sum

def running_total(ary)
  total = [ary[0]]

  case ary.size
  when 0
    return []
  when 1
    return total
  else
    counter = 1
    loop do
      total << (ary[counter] + total.last)
      counter += 1
      break if counter == ary.size
    end
  end
  total
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

def easy_total(ary)
  sum = 0
  ary.map { |num| sum += num }
end


puts easy_total([2, 5, 13]) == [2, 7, 20]
puts easy_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts easy_total([3]) == [3]
puts easy_total([]) == []
