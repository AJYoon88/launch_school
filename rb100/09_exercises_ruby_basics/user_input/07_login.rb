UN = "admin"
PW = "SecreT"

loop do
  puts ">> Please enter your user name:"
  un_input = gets.chomp
  puts ">> Please enter your password:"
  pw_input = gets.chomp
  break if un_input == UN && pw_input == PW
  puts ">> AUthorization failed!"
end

puts 'Welcome!'