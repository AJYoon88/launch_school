def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  if dot_separated_words.size == 4
    dot_separated_words.each { |word| return false if !is_an_ip_number(word) }
  else
    return false
  end
  
  true
  
end

def is_an_ip_number(str)
  (0..255).include?(str.to_i)
end


p dot_separated_ip_address?("162.352.1.1")