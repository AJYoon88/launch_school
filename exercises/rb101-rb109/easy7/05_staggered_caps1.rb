def staggered_case(str, start_with = "upcase")
  new_str = ""
  str.chars.each_with_index do |char,ind|
    if start_with == "upcase"
      if ind.even?
        new_str << char.upcase
      else
        new_str << char.downcase
      end
    elsif start_with == "downcase"
      if ind.even?
        new_str << char.downcase
      else
        new_str << char.upcase
      end
    end
  end
  new_str
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

