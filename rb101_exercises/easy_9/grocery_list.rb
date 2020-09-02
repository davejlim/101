# RB101-109 - Small Problems - Easy 9 - Grocery List
#
# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.
#

# Input: Array; each subarray has 2 elements
# Output: Array of strings
#
# Approach
# Iterate through each element of the array
# Assign the subelements to str and qty
# Create a for loop for qty times to insert the str into a new array

def buy_fruit(array)
  fruit_list_arr = []

  array.each do |fruit_ele|
    fruit_str, qty = fruit_ele

    for i in 1..qty
      fruit_list_arr << fruit_str
    end

  end

  fruit_list_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
    ["apples", "apples", "apples", "orange", "bananas","bananas"]
