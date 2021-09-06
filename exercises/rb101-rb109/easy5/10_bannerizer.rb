=begin
# Problem
- input: string
- output: string within a box

- requirement
  - there are 1 space gaps between left or right side of the box and the string. 
  - the size of box will also shrink based on the length of the string. 
  
  
# Examples 
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

# Data Structure
- string

# Algo
- find the length of the string
- format the output string so that the input string is place at the center of the banner with 1 space gaps left and right. 

=end

# def print_in_box(str)
#   num_char = str.length
  
#   puts "+-" + ("-" * num_char) + "-+"
#   puts "| " + (" " * num_char) + " |"
#   puts "| " + str + " |"
#   puts "| " + (" " * num_char) + " |"
#   puts "+-" + ("-" * num_char) + "-+"
# end

MAX_STR_LENGTH = 76

def print_in_box(message)
  horizontal_rule = message.size > MAX_STR_LENGTH ? "+ #{'-' * MAX_STR_LENGTH} +" : "+ #{'-' * (message.size)} +"
  empty_line = message.size > MAX_STR_LENGTH ? "| #{' ' * (MAX_STR_LENGTH)} |" : "| #{' ' * (message.size)} |"
  
  puts horizontal_rule
  puts empty_line
  
  if message.size > MAX_STR_LENGTH
    
    message_lines = message.size / MAX_STR_LENGTH
    i = 0
    while message_lines > 0
      puts "| #{message[i * MAX_STR_LENGTH..(i + 1) * MAX_STR_LENGTH - 1]} |"
      i += 1
      message_lines -= 1
      remaining_message_slice = message[i * MAX_STR_LENGTH ..-1]
    end
    
    puts "| #{remaining_message_slice}#{" " * (MAX_STR_LENGTH - remaining_message_slice.length)} |"
  
  else
    
    puts "| #{message} |"
  
  end
  
  puts empty_line
  puts horizontal_rule
end

# Examples 
p print_in_box('Heladfadfadfdsflo')
puts
p print_in_box("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")