# RB101-109 - Small Problems - Easy 6 - Fibonacci Number Location by Length
#
# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)

def find_fibonacci_index_by_length(length)
  first = 1
  second = 1
  index = 2

  loop do
    fibonacci = first + second
    index += 1

    break if fibonacci.to_s.length >= length

    first = second
    second = fibonacci
  end

  index
end

puts find_fibonacci_index_by_length(2)
puts find_fibonacci_index_by_length(3)
puts find_fibonacci_index_by_length(10)
puts find_fibonacci_index_by_length(100)
puts find_fibonacci_index_by_length(1000)
puts find_fibonacci_index_by_length(10000)
puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
