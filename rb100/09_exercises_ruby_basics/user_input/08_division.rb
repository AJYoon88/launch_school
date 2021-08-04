def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

dividend = nil
divisor = nil

loop do
  puts ">> Please enter a numerator:"
  input = gets.chomp
  if valid_number?(input)
    dividend = input.to_i
    break
  end
  puts ">> Numerator must be an integer!"
end

loop do
  puts ">> Please enter a denominator:"
  input = gets.chomp
  if !valid_number?(input)
    puts ">> Denominator must be a non-zero integer!"  
  else  
    if input.to_i != 0
      divisor = input.to_i
      break
    else
      puts ">> Denominator cannot be zero!"
    end
  end
end

puts "The answer is #{dividend.to_f/divisor.to_f}"
  