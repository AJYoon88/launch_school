[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# will return true because 1 is odd. 
# the code will only print 1 because since 1.odd? retuns true value, and it won't evaluate the rest of array elements. (lazy evaluation)
