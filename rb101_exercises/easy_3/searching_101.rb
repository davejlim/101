# RB101-109 Small Problems - Easy 3 - Searching 101

# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

array = []

order = ['1st', '2nd', '3rd', '4th', '5th', 'last']

def prompt(msg)
  puts "=> #{msg}"
end

def get_answer(ord, ary)
  ord.each do |place|
    prompt "Enter the #{place} number:"
    ary << gets.chomp
  end
end

def first_five(ary)
  ary.slice(0, (ary.size - 1))
end

def last_included?(ary)
  first_five(ary).include?(ary[-1])
end

def display_appearance(ary)
  if last_included?(ary)
    puts "The number #{ary.last} appears in #{ary}."
  elsif !last_included?(ary)
    puts "The number #{ary.last} does not appear in #{ary}."
  end
end

get_answer(order, array)
display_appearance(array)
