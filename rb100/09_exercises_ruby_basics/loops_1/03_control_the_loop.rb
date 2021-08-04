# iterations = 1

# loop do
#   if iterations <= 5  
#     puts "Number of iterations = #{iterations}"
#     iterations += 1
#   else
#     break
#   end
# end


iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end