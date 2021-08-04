# say_hello = true

# i = 1
# while say_hello
#   puts 'Hello!'
#   say_hello = false
#   i += 1
  
#   if i <= 5
#     say_hello = true
#   end
# end


say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

puts

5.times {puts "Hello!"}