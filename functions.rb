def new_game()
  uri = URI('https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1')
  my_hash = JSON.parse(Net::HTTP.get(uri))
  return my_hash['deck_id']
end

def draw_card(deck_id)
  uri = URI("https://deckofcardsapi.com/api/deck/#{deck_id}/draw/?count=1")
  my_hash = JSON.parse(Net::HTTP.get(uri))
  puts my_hash['cards'].first['value']
end
