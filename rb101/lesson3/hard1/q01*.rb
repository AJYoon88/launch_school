if false
  greeting = "hello world"
end

p greeting # evaluses to nil instead of throwing a NameError.

# Because the variable "greeting" is already initialized in an if block even though this if block doesn't get actually executed. 
# without any initialization, the Ruby will raise a NameError. 

