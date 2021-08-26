# def stringy(num)
#   str = ""
  
#   i = 1
#   while i < num + 1
#     if i % 2 != 0
#       str += "1"
#       i += 1
#     else
#       str += "0"
#       i += 1
#     end
#   end
  
#   str
    
# end  


def stringy(num, start = 1)
  numbers = []
  
  num.times do |index|
    if start == 1
      number = index.even? ? 1 : 0
    else
      number = index.even? ? 0 : 1
    end
    numbers << number
  end
  
  numbers.join("")
end



puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
