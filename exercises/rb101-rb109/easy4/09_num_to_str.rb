=begin
# Problem
- input: number
- output: number string

# Examples
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

# Datatype
- hash containing number => string pairs
- array to store each digit of the number. 

# Algo
- set up hash matching an integer to a number string.
- initialize an empty array to store matched number string. 
- initialize a varibable called quotient to the input number.
- breakdown the input number to individual digits
  - begin loop, 
    - during each loop divide the quotient by 10. Get remainder and quotient.
    - match the remainder to hash keys to find the corresponding number string. Store the number string at the beginning of the array initilzied before the loop.
    - divide the quotient by 10. 
  - end loop when the quotient becomes 0.
- return joined array.
=end

DIGITS = { 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => 7, 8 => "8", 9 => "9", 0 => "0" }

# def integer_to_string(num)

#   str_arr = []
#   quotient = num
  
#   loop do
#     digit = quotient % 10
#     str_arr.unshift(DIGITS[digit])
#     quotient /= 10
#     break if quotient == 0
#   end
  
#   str_arr.join
   
# end

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'