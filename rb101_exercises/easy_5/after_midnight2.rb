# RB101-109 - Small Problems - Easy 5 - After Midnight - Take 2 (After Solution)
#
# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# Input: Integer
# Output: String
# Data Structure: N/A
#
# Calculate number of minutes in a day because we are using a 24 hour format
# Find the remainder of minutes after dividing by the minutes in a day to
# account for multi-day spans
# Divide the remainder of minutes by the number of minutes in an hour to
# calculate hours and use the remainder for minutes
# Format for 2 digits

MINUTES = 60
HOURS = 24
DAY_MINUTES = MINUTES * HOURS

def time_of_day(minutes_delta)
  minutes_delta = minutes_delta % DAY_MINUTES
  hours, minutes = minutes_delta.divmod(MINUTES)
  format('%02d:%02d', hours, minutes)
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

