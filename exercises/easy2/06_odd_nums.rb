# (1..99).each { |x| puts x if x % 2 != 0 }

# a = (1..99).to_a
# a.select! { |x| x % 2 != 0 }
# puts a

# 1.upto(99) { |x| puts x if x % 2 != 0 }

1.upto(99) { |x| puts x if x.odd? }