# method 1

famous_words = "seven years ago..."

puts "Four socre and " + famous_words

# method 2

full_sentence = "Four score and "
famous_words = "seven years ago..."

full_sentence << famous_words

puts full_sentence

# method 3

famous_words = "seven years ago..."

famous_words.prepend("Four score and ")

puts famous_words