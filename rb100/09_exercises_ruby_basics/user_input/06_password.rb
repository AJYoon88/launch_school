PW = "SecreT"

loop do
  puts ">> Please enter your password:"
  input = gets.chomp
  break if input == PW
  puts ">> Invalid password!"
end

puts 'Welcome!'