def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(10) + 1
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(sum)
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  player_choice = get_user_input
  if player_choice == 'h'
    card_total += deal_card
    break
  elsif player_choice == 's'
    break
  else invalid_command 
  prompt_user
  end
  return card_total
end

def invalid_command 
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
