#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 12

require 'pry'

# Given the following data structure, and without using the Array#to_h method, 
# write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# Input  - array of subarrays and hashes
# Output - hash

# - create an each method to iterate through each element of the array
  # - initialize a new empty hash
    # - create a hash with the first item as the key and the value as the second item


new_arr = {}

arr.each do |element|
  new_arr[element[0]] = element[1]
end

p new_arr

# Remember that any Ruby object can be a hash key and any Ruby object can be a hash value