# check if first statement is true
# if true, check if the other statement is false. If so, return true else return false. 
# if the firststement is false, check the other is true.

# def xor?(cond1, cond2)
#   if cond1 == true
#     if cond2 == false then return true else return false end
#   else
#     if cond2 == true then return true else return false end
#   end
# end

def xor?(cond1, cond2)
  !cond1 == !!cond2
  # return true if !cond1 == cond2
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)