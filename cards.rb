require_relative 'functions'
require 'tty-prompt'

hand = Hash.new(0)
id = nil

loop do
  prompt = TTY::Prompt.new
  choices = { 'New Game' => 1, 'Draw a Card' => 2, 'Show Hand' => 3, 'Quit' => 4 }
  choice = prompt.select('Select Action:', choices)

  case choice
  when 1
    id = new_game
  when 2
    if id.nil?
      puts 'You need to start a new game first'
    else
      card = draw_card(id)
      hand[card] += 1
    end
  when 3
    show_hand(hand)
  when 4
    exit
  end
end
