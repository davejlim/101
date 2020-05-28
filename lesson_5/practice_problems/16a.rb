#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 16

require 'pry'

# Write a method that returns one UUID when called with no parameters.
# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def uuid
  uuid = ''
  sections = [8, 4, 4, 4, 12]
  characters = ('0'..'9').to_a + ('a'..'z').to_a

  sections.each_with_index do |number, index|
    number.times do
      uuid << characters.sample
    end
    uuid << '-' unless index == sections.size - 1
  end

uuid
end

p uuid