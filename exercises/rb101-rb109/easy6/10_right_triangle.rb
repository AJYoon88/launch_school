def triangle(n)
  n.times { |num| puts " "*(n - num + 1) + "*"*(num + 1) }
end

triangle(15)