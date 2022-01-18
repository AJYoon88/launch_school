def get_grade(n1, n2, n3)
  avg = (n1 + n2 + n3)/3
  case avg
  when 90..100
    'A'
  when 80...90
    'B'
  when 70...80
    'C'
  when 60...70
    'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
