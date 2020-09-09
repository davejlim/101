# RB101-109 - Medium 1 - 1000 Lights
#
# You have a bank of switches before you, numbered from 1 to n. Each switch is
# connected to exactly one light that is initially off. You walk down the row
# of switches and toggle every one of them. You go back to the beginning, and
# on this second pass, you toggle switches 2, 4, 6, and so on. On the third
# pass, you go back again to the beginning and toggle switches 3, 6, 9, and so
# on. You repeat this process and keep going until you have been through n
# repetitions.
#
# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.

# Input: Integer
# Output: Array
#
# Approach:
# Create a method that creates multiples of a a number until a certain number
# Create an array from a range from 1..n
# Create an ON array
# Create an OFF array
# Create a loop where we increment the multiples from 1 to n
# For each incremented multiple
#   Delete the multiple arrays from the ON array
#   Add them to the OFF array


def multiples(n, cap)
  multiples_array = []
  number = 0

  until number >= cap
    multiples_array <<  number += n
  end

  multiples_array
end

def light_switch(n)
  on_switches = (1..n).to_a
  off_switches = []

  round = 1

  loop do
    round += 1
    new_off_switches = on_switches.select { |ele| multiples(round, n).include?(ele) } +
                    off_switches.select { |ele| !multiples(round, n).include?(ele) }
    new_on_switches = on_switches.select { |ele| !multiples(round, n).include?(ele) } +
                    off_switches.select { |ele| multiples(round, n).include?(ele) }


    on_switches = new_on_switches
    off_switches = new_off_switches


    return on_switches if round == n
  end
end

p light_switch(5)
p light_switch(10)
p light_switch(1000)
