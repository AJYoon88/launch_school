require 'pry'

VALID_CHOICES = %w(rock paper scissors spock lizard)

WINS = { 'rock' =>  ['lizard', 'scissors'],
         'paper' => ['rock', 'spock'],
         'scissors' => ['lizard', 'paper'],
         'spock' => ['scissors', 'rock'],
         'lizard' => ['paper', 'spock'] }

SCORE_TO_WIN = 3

def prompt(message)
  Kernel.puts("=> #{message}")
end

def user_input(input)
  case input.downcase
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sc'
    'scissors'
  when 'sp'
    'spock'
  when 'l'
    'lizard'
  else
    input
  end
end

def win?(first, second)
  WINS[first].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost!")
  else
    prompt("It's a tie!")
  end
end

prompt("Welcome to the Rock, Paper, Scissors, Spock, and Lizard game!")
puts

prompt("Would you like to read about the rules? If yes, please enter yes/y.\nOtherwise, press any key to begin the game!")

input_rules = gets.chomp

if input_rules.downcase == 'y' || input_rules.downcase == 'yes'
  rules = <<-MSG
  Sure, here are the game rules:

  - Scissors cuts paper,
  - Paper covers rock,
  - Rock crushes lizard,
  - Lizard poisons Spock,
  - Spock smashes scissors,
  - Scissors decapitates lizard,
  - Lizard eats paper,
  - Paper disproves Spock,
  - Spock vaporizes rock,
  - Rock crushes scissors.

  MSG

  prompt(rules)
  prompt("Whoever first scores #{SCORE_TO_WIN} points will win the game.")
  puts
  prompt("If you are ready, please press any key to begin the game!")
  gets

end

loop do # main loop
  system('clear')
  score = {player: 0, computer: 0}
  round = 1

  prompt("Let the game begin!")
  puts

  loop do
    Kernel.puts("----------ROUND #{round}------------")
    prompt("Current score: player #{score[:player]} vs computer #{score[:computer]}")
    puts
    choice = ''
    loop do
      prompt("Choose one: rock(r), paper(p), scissors(sc), spock(sp), or lizard(l)")
      choice = user_input(Kernel.gets().chomp())

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample()
    puts
    Kernel.puts("Your choice => #{choice.upcase} >> VS << #{computer_choice.upcase} <= Computer's choice")
    puts

    display_result(choice, computer_choice)

    if win?(choice, computer_choice)
      score[:player] += 1
    elsif win?(computer_choice, choice)
      score[:computer] += 1
    end

    break if score[:player] == SCORE_TO_WIN || score[:computer] == SCORE_TO_WIN

    Kernel.puts()

    round += 1
  end

  Kernel.puts()
  Kernel.puts("---------GAME FINISHED----------")
  prompt("Final score: player #{score[:player]} vs computer #{score[:computer]}")

  puts
  binding.pry
  if score[:player] == SCORE_TO_WIN
    prompt("Congratulations! You won the game!")
  else
    prompt("You lost the game. Sorry, better luck next time.")
  end

  Kernel.puts()

  prompt("Do you want to play again? Enter yes(y) or no(n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
