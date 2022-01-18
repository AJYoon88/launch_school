def negative(n)
  # n <= 0 ? n : -n
  -n.abs
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby