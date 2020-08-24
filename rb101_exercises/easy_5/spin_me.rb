# RB101-109 - Small Problems - Easy 5 - Spin Me Around In Circles
#
# You are given a method named spin_me that takes a string as an argument and
# returns a string that contains the same words, but with each word's
# characters reversed. Given the method's implementation, will the returned
# string be the same object as the one passed in as an argument or a different
# object?
#
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

string = "hello world"
puts "Before Method: #{string.object_id}"

returned_string = spin_me(string) # "olleh dlrow"#
puts "After Method: #{returned_string.object_id}"

# No the returned value from the method is not the same. This is because of
# the String#split and the String#join methods. When the String#split method
# is invoked, we now have a different object and there is no way to
# retain the original object.

