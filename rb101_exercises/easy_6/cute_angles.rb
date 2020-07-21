# RB101-109 Small Problems - Easy 6 - Cute Angles
#
# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

DEGREE = "\xC2\xB0"
TOTAL_DEGREES = 360
MINUTES_IN_DEGREE = 60
SECONDS_IN_MINUTE = 60
SECONDS_IN_DEGREE = MINUTES_IN_DEGREE * SECONDS_IN_MINUTE

def dms(num)
  total_seconds = num * SECONDS_IN_DEGREE
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_IN_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_IN_MINUTE)
 "#{degrees}#{DEGREE}#{format('%02d', minutes)}\'#{format('%02d', seconds)}\""
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

def dms_further(num)
  total_seconds = (num % 360) * SECONDS_IN_DEGREE
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_IN_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_IN_MINUTE)
 "#{degrees}#{DEGREE}#{format('%02d', minutes)}\'#{format('%02d', seconds)}\""
end

puts dms_further(400)
puts dms_further(-40)
puts dms_further(-420)
puts dms_further(400) == %(40°00'00")
puts dms_further(-40) == %(320°00'00")
puts dms_further(-420) == %(300°00'00")
