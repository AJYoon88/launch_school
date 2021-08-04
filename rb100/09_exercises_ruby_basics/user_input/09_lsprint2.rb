number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3: (Q to quit)'
  input = gets.chomp
  number_of_lines = input.to_i
  if input.upcase == "Q"
    break
  elsif number_of_lines >= 3
    while number_of_lines > 0
      puts 'Launch School is the best!'
      number_of_lines -= 1
    end
  else
    puts ">> That's not enough lines."
  end
end




