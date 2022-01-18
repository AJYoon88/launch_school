Return to this after reading the Regular expression book. 

# def word_to_digit(str)
#   digits = (0..9).to_a
#   digit_words = %w(zero one two three four five six seven eight nine)
  
#   str.split(' ').map do |word|
#     word_without_special_char = word.gsub(/[^a-zA-Z]/,'')
#     if digit_words.include?(word_without_special_char)
#       new_string = digits[digit_words.index(word_without_special_char)].to_s
#       word[-1] == '.' ? new_string + '.' : new_string
#     else
#       word
#     end
#   end.join(' ')
# end

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

