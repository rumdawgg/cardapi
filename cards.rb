require 'net/http'
require 'json'
require_relative 'functions'

prompt = '> '

puts 'Welcome to my card game.'
puts prompt

id = new_game
card = draw_card(id)
puts card
