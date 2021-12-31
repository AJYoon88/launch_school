def repeater(str)
  arr = []
  str.chars.each { |char| arr << char * 2 }
  arr.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''