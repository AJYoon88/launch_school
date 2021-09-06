# input: year; output: boolean
# leap year == true if year % 4 but not year % 100. However, year % 400 is also leap year. 

# leap year = [4, 8 20, 400, 800.. etc]
# non-leap year = [1, 2, 100, 200]

# the input will be a single number. No need for array or hash

# If condition, First check year % 400, then % 100, then % 4
# Alternative way: check if year % 4 == 0, then if year % 100 != 0 , it will be a leap year. Also even if year % 100 == 0, if the year % 400 == 0, this will be leap year.

# return true/false

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else 
    year % 4 == 0
  end    
end


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
  
puts  
puts "Further Consideration"

def leap_year?(year)
  if year % 4 == 0
    if year % 100 != 0
      true
    else
      year % 400 == 0
    end
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
  