hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

a =  hsh.each_with_object([]) do |(k,v),arr|
  arr << v[:colors].map do |color|
    color[0].upcase + color[1..-1]
  end
  
  arr << v[:size].upcase
end

p a