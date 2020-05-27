#  RB101 - Lesson 5 - Practice Problems: Sorting, Nested Collections and Working with Blocks - 2

# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# Input - 3 Key/Value Paris in 4 Hash elemetns in an array
# Output - same data structure but sorted from earliest to latest by the published year value
# Data Structure - Array and Hash

# - create map transformation to transform hash elements
# - sort hash elements by ascending order by published year

books.sort_by do |book|
  book[:published]
end

# sort_by allows us to access a particular value in each hash by which to sort, as long as those values have a <=> method
# all the values for :publisehd are strings and are the same length so we can compare them without having to convert them to integers