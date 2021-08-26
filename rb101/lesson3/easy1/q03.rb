advice = "Few things in life are as important as house training your pet dinosaur."

# words = advice.split

# words.map! { |word| if word == "important" then "urgent" else word end }

# p words.join(" ")


p advice.gsub!("important", "urgent")