# RB101-109 - Small Problems - Easy 5 - Bannerizer
#
# Write a method that will take a short line of text, and print it within a box.
#
# Input: String
# Output: Strings
#
# Approach:
# Add length of box with '-'s as length of string + 2
# Keep height the same with |

def print_in_box(str)
  puts "+-#{'-'*str.length}-+"
  puts "|#{' ' * (str.length + 2)}|"
  puts "| #{str} |"
  puts "|#{' ' * (str.length + 2)}|"
  puts "+-#{'-'*str.length}-+"
end

print_in_box('To boldly go where no one has gone before.')
#+--------------------------------------------+
#|                                            |
#| To boldly go where no one has gone before. |
#|                                            |
#+--------------------------------------------+

print_in_box('')
#+--+
#|  |
#|  |
#|  |
#+--+
