=begin

# Problem
- input: integer
- output: time in 24 hour format with minutes
- requirements: 
    - the integer can be either positive, negative or 0.
    - 24 hour format with minutes.
    - prepend 0 if the tens digit is empty.

- implicit requirement:
    - integer represent # of minutes. 
    - starts from midnight 00:00. There's no 24:00.
    - positive integer means going forward in time
    - negative integer means going backward in time.

# Examples
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# Data structure
- integer and string

# Algorithm
- determine if the input integer is positive, negative or 0.
- if the input integer is 0, return "00:00"
- if the input integer is positive, subtract 1440 from it until the leftover is less than 1440. 
    - then divide the leftover by 60. save the quotient as hour, and remainder as minute. 

- if the input integer is negative, add 1440 from the number until the leftover is greater than -1440.
    - then add the leftover to 1440.
    - divide the sum by 60. The quotient is hour, and the remainder is minute. 
- convert hour and minute into string type objects.
- format and return the result string. 

=end

MIN_PER_DAY = 1440
MIN_PER_HOUR = 60


def time_of_day(int)
  return "00:00" if int == 0
  
  if int > 0
    while int > MIN_PER_DAY
      int -= MIN_PER_DAY
    end
    
    hr, min = int.divmod(MIN_PER_HOUR)
  
  else
    while int < -MIN_PER_DAY
      int += MIN_PER_DAY
    end
    
    hr, min = (MIN_PER_DAY+int).divmod(MIN_PER_HOUR)
  end
  
  format('%02d:%02d', hr, min)
  
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"