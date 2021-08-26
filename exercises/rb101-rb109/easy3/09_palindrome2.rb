def real_palindrome?(str)
  alph_num = "1234567890abcdefghijklmnopqrstuvwsyz"
  chars = str.downcase.split("")
  
  new_chars = chars.select { |chr| alph_num.include?(chr) } 
  new_chars == new_chars.reverse
  
end

p real_palindrome?('madam') #== true
p real_palindrome?('Madam') #== true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
p real_palindrome?('356653') #== true
p real_palindrome?('356a653') #== true
p real_palindrome?('123ab321') #== false