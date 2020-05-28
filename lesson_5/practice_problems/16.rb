#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 16

require 'pry'

# Write a method that returns one UUID when called with no parameters.
# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def hyphen(string)
  string << '-'
end

def random(string, input)
  string << input.sample
end

def uuid
  new_uuid = ''
  hexadecimal = 'abcdefghijklmnopqrstuvwxyz'.chars + '1234567890'.chars

  8.times do
    random(new_uuid, hexadecimal)
  end

  hyphen(new_uuid)

  3.times do
    4.times do
      random(new_uuid, hexadecimal)
    end
    hyphen(new_uuid)
  end

  12.times do
    random(new_uuid, hexadecimal)
  end

  new_uuid
end

p uuid

