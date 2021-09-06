def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# Q: will the returned string be the same object as the one passed in as an argument or a different object?

# it is a different object. The input str object not directly mutated. We split the str into an array for modification, and joined the modified words to a new object. 