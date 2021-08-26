# def reverse_sentence(str)
#   words = str.split
#   rev_words = []
  
#   words.reverse_each {|word| rev_words << word}
  
#   rev_words.join(" ")
# end



def reverse_sentence(str)
  str.split.reverse.join(" ")
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''