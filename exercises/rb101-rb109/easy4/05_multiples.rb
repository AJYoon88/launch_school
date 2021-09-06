#problem
# input : integer greater than 1.
# output : sum of all multiples of 3 and 5 that exist between 1 and the number. 
# requirement: none

# examples
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# datastructure
# array

# Algorithm
# find multiples of 3 or 5 (ie num % 3 == 0 or num % 5 == 0, and add them to the common array called "multiples". 
# add all values in the array and return the sum. 

def multisum(num)
  multiples = []
  
  (1..num).each { |n| multiples << n if n % 3 == 0 || n % 5 == 0 }
  
  multiples.inject { |sum, n| sum += n }
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168