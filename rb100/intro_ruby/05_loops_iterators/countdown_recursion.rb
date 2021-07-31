def countdown(n)
  if n <= 0
    puts n
  else
    puts n
    countdown(n-1)
  end
    
end



puts "Enter a number to start countdown"
num = gets.chomp.to_i

countdown(num)

