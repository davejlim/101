# RB101-109 - Small Problems - Easy 5 - After Midnight (Part 2)
#
# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time_str)
  hours, minutes = time_str.split(/:/).map(&:to_i)
  min_delta = ((hours * MINUTES_PER_HOUR) + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  #hours, minutes = time_str.split(/:/)
  #min_delta = (hours.to_i * MINUTES_PER_HOUR) + minutes.to_i
  #return 0 if min_delta == 0
  min_delta = MINUTES_PER_DAY - after_midnight(time_str)
  min_delta = 0 if min_delta == MINUTES_PER_DAY
  min_delta
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
