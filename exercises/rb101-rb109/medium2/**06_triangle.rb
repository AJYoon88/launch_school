# note how to use case when statement for multiple criteria. Also, you don't have to specify case.

# def triangle(a1, a2, a3)
#   angles = [a1,a2,a3].sort
#   return :invalid if angles.include?(0) || angles.sum != 180
#   if angles.include?(90)
#     :right
#   elsif angles[2] > 90
#     :obtuse
#   else
#     :acute
#   end
# end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid