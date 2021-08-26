numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# will print 1 2 2 3 in seperate lines because array#uniq does not mutate the caller. 