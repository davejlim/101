#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 6

require 'pry'

# Given this previously seen family hash, print out the name, age and gender of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# like this (Name) is a (age)-year-old (male or female).

# Input - Hash
# Output - String
# Data Structure - Hash

# - create a each loop that iterates over each hash element
  # - print string by accessing name
  # - print age and gender by accessing the value of the first hash

munsters.each do |name, values|
  puts "#{name} is a #{values['age']}-year-old #{values['gender']}."
end