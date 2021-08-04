def capitalize(str)
  if str.length > 10
    puts str.upcase
  else
    puts str
  end
end

puts "Enter your sentence"
userinput = gets.chomp

capitalize(userinput)
