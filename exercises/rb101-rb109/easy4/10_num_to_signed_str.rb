=begin
#Problem
- input: number
- output: number string with a +/- sign.

#Examples 
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

#Datastructure
- Hash
- string

# Algo
0. Hash with all num => str_num pairs.
1. determine if the input number is 0.
  1a. if yes, return "0"
2. determine if the input is a negative number.
  2a. if yes, convert to positive by multiplying -1.
  2b. use integer_to_string method to convert num into str
  2c. prepend '-' to the result str.
3. if the input num is a positive number.
  3a. use integer_to_string method to convert num into str.
  3b. prepend '+' to the result str
  3c. return the result str.

=end

DIGITS = { 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => 7, 8 => "8", 9 => "9", 0 => "0" }

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

# def signed_integer_to_string(num)
#   str = ''
#   if num == 0
#     "0"
#   elsif num < 0
#     pos_num = num * -1
#     str = integer_to_string(pos_num)
#     str.prepend('-')
#   else
#     str = integer_to_string(num)
#     str.prepend('+')
#   end
# end

# p signed_integer_to_string(4321) # == '+4321'
# p signed_integer_to_string(-123) # == '-123'
# p signed_integer_to_string(0) # == '0'


def signed_integer_to_string(number)
  return '0' if number == 0
  
  sign = number < 0 ? '-' : '+'
  
  number *= -1 if number < 0
  
  sign + integer_to_string(number)
  
end

p signed_integer_to_string(4321) # == '+4321'
p signed_integer_to_string(-123) # == '-123'
p signed_integer_to_string(0) # == '0'