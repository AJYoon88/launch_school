def balanced?(str)
  counter = 0
  str.chars.each do |char|
    case char
    when '(' then counter += 1
    when ')' then counter -= 1
    end  
    break if counter < 0
  end
  counter == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false