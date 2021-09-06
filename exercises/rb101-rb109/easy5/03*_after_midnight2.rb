=begin

# Problem
- input: str of time in 24 hour format
- output: number of minutes before or after midnight

- requirement
  - inputs are str of time represented in 24 hour format. 
  - 24:00 is equal to 00:00
  - the output value must fall within the range of 0..1439.
  - do not use Ruby's Date and Time method. 

# Examples 

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

# Data Structure
- array to hold hour and minute values after splitting the str.

# Algorith
- return 0 if input strings are "00:00" or "24:00"
- split the input str with ':' as a separator and save it to a new arr
- convert the splitted str to integers. 
- convert the time into total minutes. 
- for after_midnight method:
  - return the total minutes
- for before_midnight method:
  - subtract the total minutes from 1440.
  - return the leftover. 

=end

HOURS_PER_DAY = 24
MIN_PER_HOUR = 60

def after_midnight(str)
  # return 0 if str == "00:00" || str == "24:00"
  # time_arr = str.split(':')
  # time_in_minutes = (time_arr[0].to_i * MIN_PER_HOUR) + time_arr[1].to_i
  
  hours, minutes = str.split(":").map(&:to_i)
  (hours * MIN_PER_HOUR + minutes) % (HOURS_PER_DAY * MIN_PER_HOUR)
end

def before_midnight(str)
  # return 0 if str == "00:00" || str == "24:00"
  # time_arr = str.split(':')
  # time_in_minutes = (time_arr[0].to_i * MIN_PER_HOUR) + time_arr[1].to_i

  delta_min = (HOURS_PER_DAY * MIN_PER_HOUR) - after_midnight(str)
  delta_min = 0 if delta_min == (HOURS_PER_DAY * MIN_PER_HOUR)
  delta_min
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
