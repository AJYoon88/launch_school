# def lights(n)
#   lights_on = []
#   (1..n).each do |round|
#     switches = (1..n).select {|num| num % round == 0}
#     switches.each do |switch|
#       lights_on.include?(switch) ? lights_on.delete(switch) : lights_on << switch
#     end
#   end
#   lights_on.sort
# end

def lights(n)
  1.upto(Math.sqrt(n)).map { |i| i**2 }
end


p lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
p lights(4)