require("pry")
WINNING_CONDITIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                      [1, 4, 7], [2, 5, 8], [3, 6, 9],
                      [1, 5, 9], [3, 5, 7]]
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"


def prompt(msg)
  puts "=> #{msg}"
end


def initializeboard
  board = {}
  (1..9).each { |n| board[n] = ' ' }
  board
end


# rubocop:disable Metrics/AbcSize
def displayboard(brd, score, round, first_player)
  system("clear")
  puts("Round #{round}")
  puts("Current score: player #{score[:player]} vs computer #{score[:computer]}")
  puts("#{first_player} goes first this round.")
  prompt("You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}")
  puts
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----|-----|-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----|-----|-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts
end
# rubocop:enable Metrics/AbcSize


def emptyplaces(brd)
  brd.keys.select { |x| brd[x] == ' ' }
end


def who_won?(brd)
  output = nil
  WINNING_CONDITIONS.each do |condition|
    test_condition = [brd[condition[0]], brd[condition[1]], brd[condition[2]]]
    if test_condition == ['X', 'X', 'X']
      output = 'You'
      break
    elsif test_condition == ['O', 'O', 'O']
      output = 'Computer'
      break
    end
  end

  output
end


def joinor(arr, delimiter = ', ', word = 'or')
  output = ""
  arr.each_with_index do |ele, idx|
    if idx == 0
      output << ele.to_s
    elsif idx == arr.length - 1
      output << delimiter << word << ' ' << ele.to_s
    else
      output << delimiter << ele.to_s
    end
  end
  output
end


def computerAI(brd)
  computer_attack = nil
  computer_defense = nil
  computer_other_pick = nil
  
  WINNING_CONDITIONS.shuffle.each do |cond|
    if brd.values_at(*cond).count(COMPUTER_MARKER) == 2
      computer_attack = brd.select{ |k, v| cond.include?(k) && v == ' ' }.keys.first
      # break unless !computer_pick || computer_pick == ' '
      return computer_attack if computer_attack
    end
  end

  WINNING_CONDITIONS.shuffle.each do |cond|     
    if brd.values_at(*cond).count(PLAYER_MARKER) == 2
      computer_defense= brd.select{ |k, v| cond.include?(k) && v == ' ' }.keys.first
      # break unless !computer_pick || computer_pick == ' '
      return computer_defense if computer_defense
    end
  end

  case brd[5]
  when ' '
    computer_other_pick = 5
  else
    computer_other_pick = emptyplaces(brd).sample
  end
  
  computer_other_pick
end



def get_user_marker_input(board)
  prompt("please select a box to place your mark.")
  prompt("Available spaces: #{joinor(emptyplaces(board))}")
  user_input = nil
  
  loop do
    user_input = gets.chomp.to_i
    break if emptyplaces(board).include?(user_input)
    # rubocop:disable Layout/LineLength
    prompt("Invalid input. Please choose one of the available spaces to place your mark.")
    # rubocop:enable Layout/LineLength
    prompt("Available spaces: #{joinor(emptyplaces(board))}")
  end
  
 user_input
end


def select_first(round)
  prompt("Please select who will go first in Round #{round}.")
  prompt("1: Player, 2: Computer, 3: Let the computer decide!")
  user_input_firstplayer = nil
  
  loop do
    user_input_firstplayer = gets.chomp.to_i
    break if [ 1, 2, 3 ].include?(user_input_firstplayer)
    prompt("Please enter a correct number.")
    prompt("1: Player, 2: Computer, 3: Let the computer decide!")
  end

  case user_input_firstplayer
  when 1
    "Player"
  when 2
    "Computer"
  when 3
    ["Player", "Computer"].sample
  end
end


def place_piece!(board, current_player)
  marker = nil
  placement = nil
  
  if current_player == "Player"
    marker = PLAYER_MARKER
    placement = get_user_marker_input(board)
  else
    marker = COMPUTER_MARKER
    placement = computerAI(board)
  end
    
  board[placement] = marker
end


def alternate_player(player)
  if player == "Player"
    "Computer"
  else
    "Player"
  end
end


prompt("Welcome to Tic-Tac-Toe")
prompt("First to score 5 will win the game!")

puts

first_player = nil
score = { :computer => 0, :player => 0 }
round = 0

loop do
  board = initializeboard
  round += 1
  first_player = select_first(round)
  current_player = first_player
  displayboard(board, score, round, first_player)

  loop do
    place_piece!(board,current_player)
    current_player = alternate_player(current_player)
    displayboard(board, score, round, first_player)
    break if who_won?(board) || emptyplaces(board).length == 0
  end

  if who_won?(board)
    prompt("#{who_won?(board)} won this round!")
    who_won?(board) == "Computer" ? score[:computer] += 1 : score[:player] += 1
  else
    prompt("It is a tie.")
  end
  
  if score[:computer] == 5
    system("clear")
    prompt("Final score : player #{score[:player]} vs computer #{score[:computer]}")
    prompt("Computer won! Sorry, better luck next time!")
    break
  elsif score[:player] == 5
    system("clear")
    prompt("Final score : player #{score[:player]} vs computer #{score[:computer]}")
    prompt("Congratulations! You won!")
    break
  end
  
  prompt("Would you like to continue playing next round? (y/n)")
  user_input2 = gets.chomp.downcase
  break if user_input2[0] == 'n'
  system("clear")
end

prompt('Thank you for playing. Good bye!')
