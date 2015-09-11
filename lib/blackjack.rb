def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end


def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  hand

  # code #initial_round here
end

def hit?(total)
  hand = total
  prompt_user
  input = get_user_input

  case input
  when 's'
    hand
  when 'h'
    hand + deal_card
  else
    invalid_command
  end
end

def invalid_command
  puts "Invalid input."
  hit?
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  deal = initial_round
  until deal > 21 do
    deal = hit?(deal)
    display_card_total(deal)
  end
  end_game(deal)
  # code runner here
end
    
