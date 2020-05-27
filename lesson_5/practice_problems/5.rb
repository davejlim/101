#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 5

require 'pry'

# Figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Input - Hash
# Output - Integer
# Data Structure - Array

# - create a each loop that iterates over each age and adds them up
  # - access age by using age key for the value
# - create a select loop based on the gender of male

male_ages = []

# munsters.each do |member|
#   male_ages << member[1]["age"] if (member[1]["gender"] == 'male')
# end

# p male_ages.reduce(:+)

munsters.each do |member, value|
  male_ages << value["age"] if (value["gender"] == 'male')
end

p male_ages.reduce(:+)