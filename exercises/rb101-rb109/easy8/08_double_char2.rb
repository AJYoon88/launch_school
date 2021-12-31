def double_consonants(str)
  arr = []
  str.chars.each do |char|
    char =~ /[^a-z]/i || char =~/[aeiou]/i ? arr << char : arr << char * 2
  end
  arr.join
end

  
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""