def multiply(num1, num2)
  num1 * num2
end

# def powerto(num, power)
#   product = 1
#   while power > 0
#     product = multiply(product, num)
#     power -= 1
#   end
#   product
# end

def powerto(num, power)
  if power == 0
    1
  elsif power >  0
    multiply(powerto(num, power-1), num)
  else
    multiply(powerto(num,power+1), Rational(1,num))
  end
end


p powerto(3,3) == 27
p powerto(5,2)
p powerto(0,11) == 0
p powerto(5,-2)
