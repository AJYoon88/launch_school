#Exercise 11

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

puts "Exersie 11"

contacts_keys = contacts.keys

contact_data.each_with_index do |data, ind|
  contacts[contacts_keys[ind]] = {email: data[0], address: data[1], phone: data[2]}
end

p contacts
puts


# Exercise 12

puts "Exercise 12"
puts
puts "Joe's email is #{contacts["Joe Smith"][:email]}"
puts
puts "Sally's phone number is #{contacts["Sally Johnson"][:phone]}"