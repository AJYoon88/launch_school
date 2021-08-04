names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   del = names.shift
#   puts del
#   break if names.length == 0
# end


loop do
  puts names.shift
  break if names.empty?
end