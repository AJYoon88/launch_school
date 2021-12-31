def center_of(str)
  num_chars = str.chars.size
  num_chars.even? ? str[num_chars/2-1, 2] : str[num_chars/2]
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'