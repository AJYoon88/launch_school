family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
imm_family = family.select {|k,v| k == :sisters || k == :brothers }

arr = imm_family.values.flatten

p arr