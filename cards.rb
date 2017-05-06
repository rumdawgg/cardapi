require_relative 'functions'

prompt = '> '

hand = Hash.new(0)

show_hand(hand)

puts 'Welcome to my card game.'
puts prompt

id = new_game
card = draw_card(id)
hand[card] += 1

card = draw_card(id)
hand[card] += 1

card = draw_card(id)
hand[card] += 1

card = draw_card(id)
hand[card] += 1

card = draw_card(id)
hand[card] += 1

show_hand(hand)
