def hexadecimal_to_integer(str)
  digits = { "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "a" => 10, "b" => 11, "c" => 12, "d" => 13, "e" => 14, "f" => 15 }
  integer_arr = []
  
  str.downcase.each_char { |char| integer_arr << digits[char] }
  
  integer_arr.reverse!
  
  integer_value = 0
  integer_arr.each_with_index { |ele, ind| integer_value += (ele * (16 ** ind)) }
  
  integer_value
  
end

p hexadecimal_to_integer('4D9f') #== 19871