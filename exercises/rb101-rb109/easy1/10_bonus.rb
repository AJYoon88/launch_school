# def calculate_bonus(num, bool)
#   if bool == true
#     num/2
#   else
#     0
#   end
# end

def calculate_bonus(num, bool)
  bool ? num/2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000