count = 1
while true
  puts "loop # #{count}"

  puts "Type STOP to stop the loop"
  input = gets.chomp

  if input == "STOP"
    puts "loop stopped"
    break
  else
    count += 1
  end
end
