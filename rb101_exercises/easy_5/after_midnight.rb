# RB101-109 - Small Problems - Easy 5 - After Midnight
#
# Part 1 - The time of day can be represented as the number of minutes before
# or after midnight. If the number of minutes is positive, the time is after
# midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use ruby's Date and Time classes.
require 'pry'

MAX_HR = 24
MAX_MIN = 60
MIN_HR = 00
MIN_MIN = 00

def time_of_day(int)
  case
  when (-60..-1).include?(int)
    min = MAX_MIN + int
    hr = MAX_HR - 1
  when (1..60).include?(int)
    min = MIN_MIN + int
    hr = MIN_HR
  when int > 60
    hr = int/60
    loop do
      break if hr < MAX_HR
      hr -= MAX_HR
    end

    if int % 60 == 0
      min = MIN_MIN
    else
      min = int % 60
    end
  when int < -60
    hr = int.abs/60
    loop do
      break if hr < MAX_HR
      hr -= MAX_HR
    end

    hr = MAX_HR - hr - 1

    if int % 60 == 0
      min = MIN_MIN
    else
      min =+ int % 60
    end
  when int == 0
    hr = MIN_HR
    min = MIN_HR
  end
  "#{'%02d' % hr}:#{'%02d' % min}"
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)
puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
