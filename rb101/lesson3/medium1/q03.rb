def factors(number)
  factors = []
  if number > 0
    (1..number).each { |div| factors << div if number % div == 0 }
  else
    return "invalid number"
  end
  factors
end

p factors(-6)
p factors(0)
p factors(156)

# The purpose of the number % divisor == 0 is to determine if the divisor is a factor of the number. (no remainder)

# the line 8 is to return the final factors array after running the method.

