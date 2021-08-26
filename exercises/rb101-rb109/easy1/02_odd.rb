# def is_odd?(num)
#   if num % 2 != 0
#     true
#   else
#     false
#   end
# end

# def is_odd?(num)
#   num % 2 == 1
# end

def is_odd?(num)
  if num.remainder(2) != 0
    true
  else
    false
  end
end



puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true