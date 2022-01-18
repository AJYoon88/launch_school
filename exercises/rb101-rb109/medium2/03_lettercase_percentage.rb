def letter_percentages(str)
  lowercase = 0
  uppercase = 0
  neither = 0
  num_chars = str.chars.size
  str.chars.each do |char|
    case char
    when 'a'..'z' then lowercase += 1
    when 'A'..'Z' then uppercase += 1
    else neither += 1
    end
  end
  
  { lowercase: ((lowercase.to_f / num_chars) * 100).round(1), uppercase: ((uppercase.to_f/num_chars)*100).round(1), neither: ((neither.to_f/num_chars)*100).round(1)}
end

p letter_percentages('abCdef 123') #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') #== { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')