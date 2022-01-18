words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
# words2 = []
# words.each do |word|
#   counts = Hash.new(0)
#   word.chars.each { |char| counts[char] += 1}
#   words2 << [word, counts]
# end

# words2.group_by {|subarr| subarr[1]}.values.each do |subarr2|
#     subarr2.map! {|subarr3| subarr3[0]}
#     p subarr2
# end

p words2 = words.group_by {|word| word.chars.sort}.values
