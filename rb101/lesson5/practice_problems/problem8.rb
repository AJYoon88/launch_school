hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = "aeiou"

hsh.each do |_,v|
  v.each do |str|
    str.chars.each {|char| puts char if VOWELS.include?(char)}
  end
end
