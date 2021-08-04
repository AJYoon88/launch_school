def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  int1 = nil
  int2 = nil
  
  loop do
    puts ">> Please enter a positive or negative integer:"
    input = gets.chomp
    if valid_number?(input)
      int1 = input.to_i
      break
    else
      puts ">> Invalid input. Only non-zero integers are allowed"
    end
  end
  
  loop do
    puts ">> Please enter a positive or negative integer:"
    input = gets.chomp
    if valid_number?(input)
      int2 = input.to_i
      break
    else
      puts ">> Invalid input. Only non-zero integers are allowed"
    end
  end
  
  
  if (int1 > 0 && int2 < 0) || (int1 < 0 && int2 > 0)
    puts "#{int1} + #{int2} = #{int1 + int2}"
    break
  else
    puts "Sorry. One integer must be positive, one must be negative."
    puts "Please start over."
  end
  
end