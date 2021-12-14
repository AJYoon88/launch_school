words = "the flintstones rock"

array = words.split(" ")

array.each { |word| word[0] = word[0].upcase }

p array.join(" ")

# another way
words.split.map { |word| word.capitalize }.join(' ')
