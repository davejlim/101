# age.rb

require 'pry'

def get_birthday
  puts "What is your birthday? Format: YYYY-MM-DD"
  birthday = gets.chomp.to_f
  binding.pry
end

def display_age(birthdate)
  age = Time.new - birthdate
end

p display_age(get_birthday)