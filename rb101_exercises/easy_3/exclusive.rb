# RB101-109 Small Problems - Easy 3 - Exclusive Or
#
# The || operator returns a truthy value if either or both of its operands
# are truthy, a falsey value if both operands are falsey. The && operator
# returns a truthy value if both of its operands are truthy, and a falsey
# value if either operand is falsey. This works great until you need only
# one of two conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

# Input: Evaluated expression
# Output: Boolean
# Data Structure: nil
#
# Pass in two arguments
# If first evaluates to true and second evaluates to false, return true
# If first evaluates to false and second evaluates to true, return true
# Else, return false

def xor(first, second)
  if first == true && second == false
    return true
  elsif first == false && second == true
    return true
  else
    return false
  end
end

#def xor?(first, second)
#  return true if first && !second
#  return true if !first && second
#  false
#end

def xor?(first, second)
  (first && !second) || (!first && second)
end

puts xor?(true, false) == true
puts xor?(false, true) == true
puts xor?(true, true) == false
puts xor?(false, false) == false


