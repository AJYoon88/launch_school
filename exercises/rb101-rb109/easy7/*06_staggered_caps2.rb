def staggered_case(str)
  new_str = ''
  counter = 0
  str.chars.each do |char|
    if char =~ /[^a-z]/i # here /i flag is used to ignore case. 
      new_str << char
    elsif counter.even?
      new_str << char.upcase
      counter += 1
    else 
      new_str << char.downcase
      counter += 1
    end
  end
  new_str
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'