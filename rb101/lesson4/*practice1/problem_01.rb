[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# returns [1,2,3] because 'hi' will evaluate to true. 
# Array#select method does selection based on truthiness of the block's return value. 

