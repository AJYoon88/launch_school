

def century(yr)
  cent = yr/100
  cent += 1 if yr.to_i % 100 != 0
  
  if cent.to_s.end_with?('11')
    "#{cent}th"
  elsif cent.to_s.end_with?('12')
    "#{cent}th"
  elsif cent.to_s.end_with?('13')
    "#{cent}th"
  elsif cent.to_s.end_with?('1')
    "#{cent}st"
  elsif cent.to_s.end_with?('2')
    "#{cent}nd"
  elsif cent.to_s.end_with?('3')
    "#{cent}rd"
  else
    "#{cent}th"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'