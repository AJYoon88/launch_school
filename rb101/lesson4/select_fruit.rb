def select_fruit(hsh)
  selected = {}
  
  keys = hsh.keys
  counter = 0
  
  loop do
    
    current_key = keys[counter]
    current_value = hsh[current_key]
    
    if current_value == "Fruit"
      selected[current_key] = current_value
    end
    counter += 1
    break if counter >= keys.length
  end
  
  selected
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}