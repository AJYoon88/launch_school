def something

  puts "Do you want me to print something? (y/n)"

  input = gets.chomp.downcase

  if input == 'y'
    puts "Something"
  elsif input == 'n'
    nil
  else
    puts "Invalid input! Please enter y or n"
    something
  end
end

something


# input = nil

# loop do
#   puts "Do you want me to print something? (y/n)"
#   input = gets.chomp.downcase
#   break if %w(y n).include?(input)
#   puts "Invalid input! Please enter y or n"
  
# end

# puts "Something" if input == 'y'