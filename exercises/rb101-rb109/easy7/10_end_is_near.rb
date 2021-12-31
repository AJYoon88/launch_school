def penultimate(str)
  str.split(" ")[-2]
end



p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'


def middle_word(str)
  words = str.split(" ")
  return "There's no middle word" if words.size < 3 || words.size.even?
  words[words.size/2]
end

p middle_word("")
p middle_word("test")
p middle_word("test word")
p middle_word("test this word")
p middle_word("test this word again")
p middle_word("test this word yet again")
