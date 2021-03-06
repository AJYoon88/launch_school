def minilang(str)
  commands = str.split(' ')
  
  register = 0
  stack = []
  
  commands.each do |command|
    if command == command.to_i.to_s
      register = command.to_i
    elsif command == 'PUSH'
      stack << register
    elsif command == 'ADD'  
      register = register + stack.pop
    elsif command == 'SUB'
      register = register - stack.pop
    elsif command == 'MULT'
      register = register * stack.pop
    elsif command == 'DIV'
      register = register / stack.pop
    elsif command == 'MOD'
      register = register % stack.pop
    elsif command == 'POP'
      register = stack.pop
    elsif command == 'PRINT'
      puts register
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 SUB PUSH 4 PUSH 5 MULT ADD DIV PRINT')