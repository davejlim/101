# RB101 - Lesson 3 Practice Problems Easy 2

# Question 1 - In this hash of people and their age, see if 'Spot' is present.

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages.include?('Spot')
# p ages.has_key?('Spot')
# p ages.key?('Spot')
# p ages.member?('Spot')

# All of my solutions were included as bonuses

# Question 2 - Convert the string in the following ways (code will be executed on original munsters_description above):

munsters_description = "The Munsters are creepy in a good way."

# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
p munsters_description.swapcase!

# "The munsters are creepy in a good way."
p munsters_description.downcase.capitalize!

# "the munsters are creepy in a good way."
p munsters_description.downcase!

# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
p munsters_description.upcase!

# Solutions were correct but you did not need to downcase the second problem because the captialize method already downcases the rest of the characters after the first one.

# Question 3 - add ages for Marilyn and Spot to the existing hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

