# def reverse_words(str)
#   words = str.split
  
#   words.map! do |word|
#     if word.length >= 5
#       word.chars.reverse.join("")
#     else
#       word
#     end
      
#   end

#   words.join(" ")
# end


def reverse_words(str)
  words = []
  
  str.split.each do |word|
    word.reverse! if word.length >= 5
    words << word
  end
  
  words.join(" ")
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS