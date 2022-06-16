SUITS = [:hearts, :diamonds, :clubs, :spades]
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']
MAX = 21
DEALER_STAY = 17

def prompt(msg)
  puts ">> #{msg}"
end

def initialize_deck
  deck = []
  SUITS.each do |suit|
    VALUES.each { |value| deck << [suit, value] }
  end
  deck
end

def deal_cards(current_deck)
  cards_dealt = []
  2.times do
    cards_dealt << current_deck.shuffle!.pop
  end
  cards_dealt
end

# rubocop:disable Metrics/AbcSize
def card_sum(cards)
  sum = 0
  cards.select { |card| card[1] != 'ace' }.each do |card|
    sum = ['jack', 'queen', 'king'].include?(card[1]) ? sum + 10 : sum + card[1]
  end

  diff = MAX - sum
  num_ace_cards = cards.select { |card| card[1] == 'ace' }.size
  if num_ace_cards > 0
    large_ace_sum = 11 + num_ace_cards - 1
    sum = if diff >= large_ace_sum
            sum + large_ace_sum
          else
            sum + num_ace_cards
          end
  end
  sum
end
# rubocop:enable Metrics/AbcSize

def busted?(value)
  true if value > MAX
end

def card_str(card)
  suit = card[0].capitalize
  value = card[1].is_a?(String) ? card[1].capitalize : card[1]
  "[#{value} of #{suit}]"
end

def cards_list_str(cards)
  str = ''
  cards.each_with_index do |card, ind|
    str << if ind < cards.size - 1
             card_str(card) + ', '
           else
             'and ' + card_str(card)
           end
  end
  str
end

def displaycards(dealer_cards, player_cards)
  if player_cards.size == 2
    puts "-> Your cards: #{card_str(player_cards[0])} and #{card_str(player_cards[1])}"
  else
    puts "-> Your cards: #{cards_list_str(player_cards)}"
  end

  puts "Dealer's cards: #{card_str(dealer_cards[0])} and [unkwon]."
end

def displaycards_dealer(dealer_cards, player_cards)
  if player_cards.size == 2
    puts "Your cards: #{card_str(player_cards[0])} and #{card_str(player_cards[1])}"
  else
    puts "Your cards: #{cards_list_str(player_cards)}"
  end

  if dealer_cards.size == 2
    puts "-> Dealer's cards: #{card_str(dealer_cards[0])} and #{card_str(dealer_cards[1])}"
  else
    puts "-> Dealer's cards: #{cards_list_str(dealer_cards)}"
  end
end

def card_compare(player_card_value, dealer_card_value, score)
  puts "Player: #{player_card_value}"
  puts "Dealer: #{dealer_card_value}"
  if player_card_value > dealer_card_value
    score["player"] += 1
    puts "You won this round."
    puts
  elsif dealer_card_value > player_card_value
    score["dealer"] += 1
    puts "Dealer won this round."
    puts
  else
    puts "It's a tie."
  end
end

puts "== Welcome to Twenty One! =="
puts
puts "Draw cards until your total card value is equal or close to #{MAX}."
puts
puts "Your total value must be greater than the dealer's to win."
puts
puts "The total sum should NOT be more than #{MAX}!"
puts
puts "The first to score 5 will win the game."
puts
prompt("Enter any key to play.")
gets.chomp

round = 1
score = { "player" => 0, "dealer" => 0 }
loop do
  loop do
    current_deck = initialize_deck
    player_cards = deal_cards(current_deck)
    dealer_cards = deal_cards(current_deck)
    player_card_value = nil
    dealer_card_value = nil

    loop do
      system('clear')
      puts "Round #{round}"
      puts "Current Score: Player #{score['player']} vs Dealer #{score['dealer']}"
      puts
      puts "== Player's turn =="
      puts
      displaycards(dealer_cards, player_cards)
      puts

      player_card_value = card_sum(player_cards)
      break if busted?(player_card_value)

      puts "Your current total is #{player_card_value}. "
      prompt("Would you 'hit' or 'stay'?")

      user_input = gets.chomp.downcase

      if user_input == 'stay'
        puts "You decided to stay. Dealer will begin the turn."
        prompt("Enter any key to continue...")
        gets.chomp
        system('clear')
        break
      else
        player_cards << current_deck.delete(current_deck.sample)
      end
    end

    if busted?(player_card_value)
      score["dealer"] += 1
      puts "Busted! Your total exceeded 21."
      puts
    else
      loop do
        puts "Round #{round}"
        puts "Current Score: Player #{score['player']} vs Dealer #{score['dealer']}"
        puts
        puts "== Dealer's turn =="
        puts
        displaycards_dealer(dealer_cards, player_cards)
        puts
        dealer_card_value = card_sum(dealer_cards)
        if busted?(dealer_card_value)
          score["player"] += 1
          puts "Dealer's total exceeded 21! Dealer busted."
          puts
          break
        end

        if dealer_card_value < DEALER_STAY
          puts "Dealer decided to hit!"
          dealer_cards << current_deck.delete(current_deck.sample)
          prompt('Enter any key to continue...')
          gets.chomp
          system('clear')
        else
          puts "Dealer decided to stay."
          puts "let's compare cards."
          prompt('Enter any key to continue...')
          gets.chomp
          card_compare(player_card_value, dealer_card_value, score)
          break
        end
      end
    end

    if score["player"] >= 5
      puts "Final Score: Player #{score['player']} vs Dealer #{score['dealer']}"
      puts "Congratulations! You won the game!"
      break
    elsif score["dealer"] >= 5
      puts "Final Score: Player #{score['player']} vs Dealer #{score['dealer']}"
      puts "Sorry, you lost the game."
      break
    else
      puts
      prompt("Continue to the next round? (y/n)")
      break unless gets.chomp.downcase[0] == 'y'
      round += 1
    end
  end
  puts
  prompt('Would you like to play another game? (y/n)')
  user_input3 = gets.chomp.downcase
  break unless user_input3[0] == 'y'
end

prompt('Thank you for playing. Good bye!')
