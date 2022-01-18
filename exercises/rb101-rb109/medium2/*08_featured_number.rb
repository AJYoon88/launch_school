def featured(n)
  featured_num = nil
  number_assessed = n + 1
  number_assessed += 1 until number_assessed.odd? && number_assessed % 7 == 0
  
  loop do
    return :error if number_assessed.to_s.size > 10
    
    if number_assessed.to_s.chars.size == number_assessed.to_s.chars.uniq.size
      featured_num = number_assessed
      break
    else
      number_assessed += 14
    end
  end
  featured_num
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements