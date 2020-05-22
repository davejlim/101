# RB101-RB109 Small Problems - Documentation Again

# 1 - Locate the ruby documentation for methods File::path and File#path. How are they different?
# One is a public class method while the other is a public instance method
# Class methods can only be called on the class while instance methods are called on objects

# 2 - What will each of the 4 puts statements print?

require 'date'

puts Date.new # Ruby documentation has changed with 2.7 but the format is Year, Month, Day if it's new it starts from the year -4712
puts Date.new(2016) # <Date: 2016-01-01
puts Date.new(2016, 5) # <Date: 2016-01-06
puts Date.new(2016, 5, 13) # <Date: 2016-01-06

# 3 - Use the ruby documentation to determine what this code will print.

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) # I believe this would throw an argument error since the method calls for 4 parameters

# This is incorrect becaause if the method defines default arguments you do not need to supply all the arguments to the method, Ruby will fill int he missing arguments in order.
# The default positional argument assigns the default value for the missing argument.
# This information can be found in the Core API Doc under doc/syntax/calling_methods.rdoc

# 4 - The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. How would you search this Array to find the first element whose value exceeds 8?

a = [1, 4, 8, 11, 15, 19]

p a.bsearch {|x| x >= 9}

# 5 - What do each of these puts statements output?

a = %w(a b c d e)
# puts a.fetch(7)  # throws an IndexError
puts a.fetch(7, 'beats me') # 'beats me'
puts a.fetch(7) { |index| index**2 } # 14 - this is wrong because **2 indicates an exponent

# 6 - What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

# 5
# 8
# The #step method is found in the Numeric class documentation. Numeric is a superclass of all numeric types where Integer and Float inherit form Numeric.

# 7 - How would you modify this code to print just the public methods that are defined or overridden by the String class? 

s = 'abc'
puts s.public_methods(all=false).inspect

# First look at documentation for your class before looking at documentaiton for the superclass because a class may override the superclass.

# 8 - Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

a = [5, 9, 3, 11]
puts a.min(2)

# 9 - Find the documentation for YAML::load_file.
# YAML page references Psych. Have to look at the Psych module.

